
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drx39xxj_state* demodulator_priv; } ;
struct drx_demod_instance {int dummy; } ;
struct drx39xxj_state {struct drx_demod_instance* demod; } ;
typedef enum drx_power_mode { ____Placeholder_drx_power_mode } drx_power_mode ;


 int DRX_POWER_DOWN ;
 int DRX_POWER_UP ;
 int ctrl_power_mode (struct drx_demod_instance*,int*) ;
 int pr_err (char*) ;

__attribute__((used)) static int drx39xxj_set_powerstate(struct dvb_frontend *fe, int enable)
{
 struct drx39xxj_state *state = fe->demodulator_priv;
 struct drx_demod_instance *demod = state->demod;
 int result;
 enum drx_power_mode power_mode;

 if (enable)
  power_mode = DRX_POWER_UP;
 else
  power_mode = DRX_POWER_DOWN;

 result = ctrl_power_mode(demod, &power_mode);
 if (result != 0) {
  pr_err("Power state change failed\n");
  return 0;
 }

 return 0;
}
