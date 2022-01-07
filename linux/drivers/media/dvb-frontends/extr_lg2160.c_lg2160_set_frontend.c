
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lg216x_state {TYPE_3__* cfg; int current_frequency; } ;
struct dtv_frontend_properties {int atscmh_rs_frame_ensemble; int atscmh_parade_id; int frequency; } ;
struct TYPE_4__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; TYPE_2__ ops; struct lg216x_state* demodulator_priv; } ;
struct TYPE_6__ {int lg_chip; int spectral_inversion; } ;




 int lg2160_agc_fix (struct lg216x_state*,int ,int ) ;
 int lg2160_agc_polarity (struct lg216x_state*,int ,int ) ;
 int lg2160_set_spi_clock (struct lg216x_state*) ;
 int lg2160_spectrum_polarity (struct lg216x_state*,int ) ;
 int lg2160_tuner_pwr_save (struct lg216x_state*,int ) ;
 int lg2160_tuner_pwr_save_polarity (struct lg216x_state*,int) ;
 int lg2161_set_output_interface (struct lg216x_state*) ;
 int lg216x_enable_fic (struct lg216x_state*,int) ;
 int lg216x_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int lg216x_initialize (struct lg216x_state*) ;
 int lg216x_set_ensemble (struct lg216x_state*,int ) ;
 int lg216x_set_if (struct lg216x_state*) ;
 int lg216x_set_parade (struct lg216x_state*,int ) ;
 int lg216x_soft_reset (struct lg216x_state*) ;
 int lg_dbg (char*,int ) ;
 scalar_t__ lg_fail (int) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int lg2160_set_frontend(struct dvb_frontend *fe)
{
 struct lg216x_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret;

 lg_dbg("(%d)\n", fe->dtv_property_cache.frequency);

 if (fe->ops.tuner_ops.set_params) {
  ret = fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
  if (lg_fail(ret))
   goto fail;
  state->current_frequency = fe->dtv_property_cache.frequency;
 }

 ret = lg2160_agc_fix(state, 0, 0);
 if (lg_fail(ret))
  goto fail;
 ret = lg2160_agc_polarity(state, 0, 0);
 if (lg_fail(ret))
  goto fail;
 ret = lg2160_tuner_pwr_save_polarity(state, 1);
 if (lg_fail(ret))
  goto fail;
 ret = lg216x_set_if(state);
 if (lg_fail(ret))
  goto fail;
 ret = lg2160_spectrum_polarity(state, state->cfg->spectral_inversion);
 if (lg_fail(ret))
  goto fail;


 ret = lg216x_soft_reset(state);
 if (lg_fail(ret))
  goto fail;

 ret = lg2160_tuner_pwr_save(state, 0);
 if (lg_fail(ret))
  goto fail;

 switch (state->cfg->lg_chip) {
 case 129:
  ret = lg2160_set_spi_clock(state);
  if (lg_fail(ret))
   goto fail;
  break;
 case 128:
  ret = lg2161_set_output_interface(state);
  if (lg_fail(ret))
   goto fail;
  break;
 }

 ret = lg216x_set_parade(state, fe->dtv_property_cache.atscmh_parade_id);
 if (lg_fail(ret))
  goto fail;

 ret = lg216x_set_ensemble(state,
   fe->dtv_property_cache.atscmh_rs_frame_ensemble);
 if (lg_fail(ret))
  goto fail;

 ret = lg216x_initialize(state);
 if (lg_fail(ret))
  goto fail;

 ret = lg216x_enable_fic(state, 1);
 lg_fail(ret);

 lg216x_get_frontend(fe, c);
fail:
 return ret;
}
