
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {int dummy; } ;
struct dvb_frontend {struct stv* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int * msg; } ;


 int DISEQC_MODE ;
 int DISTXFIFO ;
 int DIS_PRECHARGE ;
 int SET_FIELD (int ,int) ;
 int SET_REG (int ,int ) ;
 int wait_dis (struct stv*,int,int) ;

__attribute__((used)) static int send_master_cmd(struct dvb_frontend *fe,
      struct dvb_diseqc_master_cmd *cmd)
{
 struct stv *state = fe->demodulator_priv;
 int i;

 SET_FIELD(DISEQC_MODE, 2);
 SET_FIELD(DIS_PRECHARGE, 1);
 for (i = 0; i < cmd->msg_len; i++) {
  wait_dis(state, 0x40, 0x00);
  SET_REG(DISTXFIFO, cmd->msg[i]);
 }
 SET_FIELD(DIS_PRECHARGE, 0);
 wait_dis(state, 0x20, 0x20);
 return 0;
}
