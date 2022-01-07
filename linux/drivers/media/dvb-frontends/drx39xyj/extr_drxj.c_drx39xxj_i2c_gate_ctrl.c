
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drx39xxj_state* demodulator_priv; } ;
struct drx_demod_instance {int dummy; } ;
struct drx39xxj_state {int i2c_gate_open; struct drx_demod_instance* demod; } ;


 int ctrl_i2c_bridge (struct drx_demod_instance*,int*) ;
 int dump_stack () ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int drx39xxj_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct drx39xxj_state *state = fe->demodulator_priv;
 struct drx_demod_instance *demod = state->demod;
 bool i2c_gate_state;
 int result;






 if (enable)
  i2c_gate_state = 1;
 else
  i2c_gate_state = 0;

 if (state->i2c_gate_open == enable) {

  return 0;
 }

 result = ctrl_i2c_bridge(demod, &i2c_gate_state);
 if (result != 0) {
  pr_err("drx39xxj: could not open i2c gate [%d]\n",
         result);
  dump_stack();
 } else {
  state->i2c_gate_open = enable;
 }
 return 0;
}
