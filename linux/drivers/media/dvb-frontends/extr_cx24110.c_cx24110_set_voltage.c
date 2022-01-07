
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;


 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct cx24110_state *state = fe->demodulator_priv;

 switch (voltage) {
 case 129:
  return cx24110_writereg(state,0x76,(cx24110_readreg(state,0x76)&0x3b)|0xc0);
 case 128:
  return cx24110_writereg(state,0x76,(cx24110_readreg(state,0x76)&0x3b)|0x40);
 default:
  return -EINVAL;
 }
}
