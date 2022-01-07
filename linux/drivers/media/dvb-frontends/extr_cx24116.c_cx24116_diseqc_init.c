
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24116_state* demodulator_priv; } ;
struct TYPE_2__ {int* args; int len; } ;
struct cx24116_state {TYPE_1__ dsec_cmd; } ;
struct cx24116_cmd {int* args; int len; } ;


 int CMD_LNBCONFIG ;
 int CMD_LNBSEND ;
 size_t CX24116_DISEQC_ARG2_2 ;
 size_t CX24116_DISEQC_ARG3_0 ;
 size_t CX24116_DISEQC_ARG4_0 ;
 size_t CX24116_DISEQC_BURST ;
 int CX24116_DISEQC_MINI_A ;
 size_t CX24116_DISEQC_MSGLEN ;
 int CX24116_DISEQC_MSGOFS ;
 scalar_t__ CX24116_DISEQC_TONEOFF ;
 int cx24116_cmd_execute (struct dvb_frontend*,struct cx24116_cmd*) ;
 scalar_t__ toneburst ;

__attribute__((used)) static int cx24116_diseqc_init(struct dvb_frontend *fe)
{
 struct cx24116_state *state = fe->demodulator_priv;
 struct cx24116_cmd cmd;
 int ret;


 cmd.args[0x00] = CMD_LNBCONFIG;
 cmd.args[0x01] = 0x00;
 cmd.args[0x02] = 0x10;
 cmd.args[0x03] = 0x00;
 cmd.args[0x04] = 0x8f;
 cmd.args[0x05] = 0x28;
 cmd.args[0x06] = (toneburst == CX24116_DISEQC_TONEOFF) ? 0x00 : 0x01;
 cmd.args[0x07] = 0x01;
 cmd.len = 0x08;
 ret = cx24116_cmd_execute(fe, &cmd);
 if (ret != 0)
  return ret;


 state->dsec_cmd.args[0x00] = CMD_LNBSEND;


 state->dsec_cmd.args[CX24116_DISEQC_BURST] = CX24116_DISEQC_MINI_A;


 state->dsec_cmd.args[CX24116_DISEQC_ARG2_2] = 0x02;
 state->dsec_cmd.args[CX24116_DISEQC_ARG3_0] = 0x00;

 state->dsec_cmd.args[CX24116_DISEQC_ARG4_0] = 0x00;


 state->dsec_cmd.args[CX24116_DISEQC_MSGLEN] = 0x00;


 state->dsec_cmd.len = CX24116_DISEQC_MSGOFS;

 return 0;
}
