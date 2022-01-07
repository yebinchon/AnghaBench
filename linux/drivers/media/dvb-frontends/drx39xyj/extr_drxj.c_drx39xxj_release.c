
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {scalar_t__ exit; struct drx_demod_instance* demodulator_priv; } ;
struct drx_demod_instance {int firmware; struct drx_demod_instance* my_i2c_dev_addr; struct drx_demod_instance* my_common_attr; struct drx_demod_instance* my_ext_attr; struct drx_demod_instance* demod; } ;
struct drx39xxj_state {int firmware; struct drx39xxj_state* my_i2c_dev_addr; struct drx39xxj_state* my_common_attr; struct drx39xxj_state* my_ext_attr; struct drx39xxj_state* demod; } ;


 scalar_t__ DVB_FE_DEVICE_REMOVED ;
 int drxj_close (struct drx_demod_instance*) ;
 int kfree (struct drx_demod_instance*) ;
 int release_firmware (int ) ;

__attribute__((used)) static void drx39xxj_release(struct dvb_frontend *fe)
{
 struct drx39xxj_state *state = fe->demodulator_priv;
 struct drx_demod_instance *demod = state->demod;


 if (fe->exit != DVB_FE_DEVICE_REMOVED)
  drxj_close(demod);

 kfree(demod->my_ext_attr);
 kfree(demod->my_common_attr);
 kfree(demod->my_i2c_dev_addr);
 release_firmware(demod->firmware);
 kfree(demod);
 kfree(state);
}
