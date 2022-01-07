
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_state {int demod; int internal; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int msg; } ;


 int stv0900_diseqc_send (int ,int ,int ,int ) ;

__attribute__((used)) static int stv0900_send_master_cmd(struct dvb_frontend *fe,
     struct dvb_diseqc_master_cmd *cmd)
{
 struct stv0900_state *state = fe->demodulator_priv;

 return stv0900_diseqc_send(state->internal,
    cmd->msg,
    cmd->msg_len,
    state->demod);
}
