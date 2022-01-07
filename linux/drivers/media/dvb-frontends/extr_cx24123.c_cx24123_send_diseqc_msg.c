
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct cx24123_state {int dummy; } ;


 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_wait_for_diseqc (struct cx24123_state*) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int cx24123_send_diseqc_msg(struct dvb_frontend *fe,
 struct dvb_diseqc_master_cmd *cmd)
{
 struct cx24123_state *state = fe->demodulator_priv;
 int i, val, tone;

 dprintk("\n");


 tone = cx24123_readreg(state, 0x29);
 if (tone & 0x10)
  cx24123_writereg(state, 0x29, tone & ~0x50);


 cx24123_wait_for_diseqc(state);


 cx24123_writereg(state, 0x2a, cx24123_readreg(state, 0x2a) & 0xfb);

 for (i = 0; i < cmd->msg_len; i++)
  cx24123_writereg(state, 0x2C + i, cmd->msg[i]);

 val = cx24123_readreg(state, 0x29);
 cx24123_writereg(state, 0x29, ((val & 0x90) | 0x40) |
  ((cmd->msg_len-3) & 3));


 cx24123_wait_for_diseqc(state);


 if (tone & 0x10)
  cx24123_writereg(state, 0x29, tone & ~0x40);

 return 0;
}
