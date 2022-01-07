
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp887x_state {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;


 int sp887x_writereg (struct sp887x_state*,int,int) ;

__attribute__((used)) static int sp887x_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct sp887x_state* state = fe->demodulator_priv;

 if (enable) {
  return sp887x_writereg(state, 0x206, 0x001);
 } else {
  return sp887x_writereg(state, 0x206, 0x000);
 }
}
