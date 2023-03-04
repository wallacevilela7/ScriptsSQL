/* ModeloLogico_1: */

CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome VARCHAR,
    programa VARCHAR
);

CREATE TABLE Cursos (
    id_curso INTEGER PRIMARY KEY,
    titulo VARCHAR,
    creditos VARCHAR,
    roteiro VARCHAR,
    pre_requisitos VARCHAR
);

CREATE TABLE Oferta de cursos (
    id_curso INTEGER PRIMARY KEY,
    ano INTEGER,
    semestre VARCHAR,
    numeros_de_secao INTEGER,
    instrutor VARCHAR,
    programacao VARCHAR,
    turma VARCHAR
);

CREATE TABLE Instrutores (
    id_instrutor INTEGER PRIMARY KEY,
    nome VARCHAR,
    departamento VARCHAR,
    titulo VARCHAR
);

CREATE TABLE oferece (
    fk_Cursos_id_curso INTEGER,
    fk_Oferta de cursos_id_curso INTEGER
);

CREATE TABLE faz (
    fk_Cursos_id_curso INTEGER,
    fk_Aluno_id_aluno INTEGER
);
 
ALTER TABLE oferece ADD CONSTRAINT FK_oferece_1
    FOREIGN KEY (fk_Cursos_id_curso)
    REFERENCES Cursos (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE oferece ADD CONSTRAINT FK_oferece_2
    FOREIGN KEY (fk_Oferta de cursos_id_curso)
    REFERENCES Oferta de cursos (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE faz ADD CONSTRAINT FK_faz_1
    FOREIGN KEY (fk_Cursos_id_curso)
    REFERENCES Cursos (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE faz ADD CONSTRAINT FK_faz_2
    FOREIGN KEY (fk_Aluno_id_aluno)
    REFERENCES Aluno (id_aluno)
    ON DELETE RESTRICT;