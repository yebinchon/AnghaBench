
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct drxd_state* demodulator_priv; } ;
struct TYPE_2__ {int disable_i2c_gate_ctrl; } ;
struct drxd_state {TYPE_1__ config; } ;


 int DRX_ConfigureI2CBridge (struct drxd_state*,int) ;

__attribute__((used)) static int drxd_config_i2c(struct dvb_frontend *fe, int onoff)
{
 struct drxd_state *state = fe->demodulator_priv;

 if (state->config.disable_i2c_gate_ctrl == 1)
  return 0;

 return DRX_ConfigureI2CBridge(state, onoff);
}
