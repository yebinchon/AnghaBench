
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;



 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int cx24123_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct cx24123_state *state = fe->demodulator_priv;
 u8 val;

 val = cx24123_readreg(state, 0x29) & ~0x40;

 switch (voltage) {
 case 130:
  dprintk("setting voltage 13V\n");
  return cx24123_writereg(state, 0x29, val & 0x7f);
 case 129:
  dprintk("setting voltage 18V\n");
  return cx24123_writereg(state, 0x29, val | 0x80);
 case 128:

  return 0;
 default:
  return -EINVAL;
 }

 return 0;
}
