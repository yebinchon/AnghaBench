
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ modulation; scalar_t__ code_rate_HP; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib7000p_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_6__ {scalar_t__ enMpegOutput; int output_mode; } ;
struct dib7000p_state {scalar_t__ version; TYPE_3__ cfg; scalar_t__ agc_state; int sfn_workaround_active; } ;


 int DIBTX_ON_HOSTBUS ;
 scalar_t__ FEC_AUTO ;
 scalar_t__ GUARD_INTERVAL_AUTO ;
 int MPEG_ON_DIBTX ;
 int OUTMODE_HIGH_Z ;
 scalar_t__ QAM_AUTO ;
 scalar_t__ SOC7090 ;
 scalar_t__ TRANSMISSION_MODE_AUTO ;
 int buggy_sfn_workaround ;
 int dib7000p_agc_startup (struct dvb_frontend*) ;
 int dib7000p_autosearch_is_irq (struct dvb_frontend*) ;
 int dib7000p_autosearch_start (struct dvb_frontend*) ;
 int dib7000p_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int dib7000p_set_output_mode (struct dib7000p_state*,int ) ;
 int dib7000p_tune (struct dvb_frontend*) ;
 int dib7090_setDibTxMux (struct dib7000p_state*,int ) ;
 int dib7090_setHostBusMux (struct dib7000p_state*,int ) ;
 int dib7090_set_diversity_in (struct dvb_frontend*,int ) ;
 int dib7090_set_output_mode (struct dvb_frontend*,int ) ;
 int dprintk (char*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int dib7000p_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
 struct dib7000p_state *state = fe->demodulator_priv;
 int time, ret;

 if (state->version == SOC7090)
  dib7090_set_diversity_in(fe, 0);
 else
  dib7000p_set_output_mode(state, OUTMODE_HIGH_Z);


 state->sfn_workaround_active = buggy_sfn_workaround;

 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);


 state->agc_state = 0;
 do {
  time = dib7000p_agc_startup(fe);
  if (time != -1)
   msleep(time);
 } while (time != -1);

 if (fep->transmission_mode == TRANSMISSION_MODE_AUTO ||
  fep->guard_interval == GUARD_INTERVAL_AUTO || fep->modulation == QAM_AUTO || fep->code_rate_HP == FEC_AUTO) {
  int i = 800, found;

  dib7000p_autosearch_start(fe);
  do {
   msleep(1);
   found = dib7000p_autosearch_is_irq(fe);
  } while (found == 0 && i--);

  dprintk("autosearch returns: %d\n", found);
  if (found == 0 || found == 1)
   return 0;

  dib7000p_get_frontend(fe, fep);
 }

 ret = dib7000p_tune(fe);


 if (state->version == SOC7090) {
  dib7090_set_output_mode(fe, state->cfg.output_mode);
  if (state->cfg.enMpegOutput == 0) {
   dib7090_setDibTxMux(state, MPEG_ON_DIBTX);
   dib7090_setHostBusMux(state, DIBTX_ON_HOSTBUS);
  }
 } else
  dib7000p_set_output_mode(state, state->cfg.output_mode);

 return ret;
}
