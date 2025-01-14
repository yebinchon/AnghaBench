
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1420_state {int CON_1_val; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;


 int s5h1420_writereg (struct s5h1420_state*,int,int) ;

__attribute__((used)) static int s5h1420_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct s5h1420_state* state = fe->demodulator_priv;

 if (enable)
  return s5h1420_writereg(state, 0x02, state->CON_1_val | 1);
 else
  return s5h1420_writereg(state, 0x02, state->CON_1_val & 0xfe);
}
