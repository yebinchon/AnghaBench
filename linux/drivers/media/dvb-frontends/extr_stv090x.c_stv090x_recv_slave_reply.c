
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {int msg_len; void** msg; } ;


 int DISRXDATA ;
 int DISRX_ST0 ;
 int FIFO_BYTENBR_FIELD ;
 int RX_END_FIELD ;
 void* STV090x_GETFIELD_Px (int,int ) ;
 void* STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int stv090x_recv_slave_reply(struct dvb_frontend *fe, struct dvb_diseqc_slave_reply *reply)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg = 0, i = 0, rx_end = 0;

 while ((rx_end != 1) && (i < 10)) {
  msleep(10);
  i++;
  reg = STV090x_READ_DEMOD(state, DISRX_ST0);
  rx_end = STV090x_GETFIELD_Px(reg, RX_END_FIELD);
 }

 if (rx_end) {
  reply->msg_len = STV090x_GETFIELD_Px(reg, FIFO_BYTENBR_FIELD);
  for (i = 0; i < reply->msg_len; i++)
   reply->msg[i] = STV090x_READ_DEMOD(state, DISRXDATA);
 }

 return 0;
}
