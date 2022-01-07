
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend_tune_settings {int min_delay_ms; int max_drift; int step_size; } ;
struct dvb_frontend_private {int min_delay; int max_drift; int step_size; scalar_t__ status; int algo_status; int state; int parameters_out; } ;
struct TYPE_2__ {scalar_t__ (* get_tune_settings ) (struct dvb_frontend*,struct dvb_frontend_tune_settings*) ;} ;
struct dtv_frontend_properties {int delivery_system; int bandwidth_hz; int symbol_rate; scalar_t__ hierarchy; scalar_t__ code_rate_LP; int inversion; int rolloff; } ;
struct dvb_frontend {TYPE_1__ ops; struct dtv_frontend_properties dtv_property_cache; struct dvb_frontend_private* frontend_priv; } ;


 int DVBFE_ALGO_SEARCH_AGAIN ;
 int EINVAL ;
 scalar_t__ FEC_AUTO ;
 scalar_t__ FEC_NONE ;
 int FESTATE_RETUNE ;
 scalar_t__ HIERARCHY_NONE ;
 int HZ ;
 int INVERSION_AUTO ;
 int dtv_property_legacy_params_sync (struct dvb_frontend*,struct dtv_frontend_properties*,int *) ;
 scalar_t__ dvb_force_auto_inversion ;
 int dvb_frontend_add_event (struct dvb_frontend*,int ) ;
 scalar_t__ dvb_frontend_check_parameters (struct dvb_frontend*) ;
 int dvb_frontend_clear_events (struct dvb_frontend*) ;
 int dvb_frontend_get_stepsize (struct dvb_frontend*) ;
 int dvb_frontend_wakeup (struct dvb_frontend*) ;
 int dvb_override_tune_delay ;
 int memset (struct dvb_frontend_tune_settings*,int ,int) ;
 int mult_frac (int,int,int) ;
 scalar_t__ stub1 (struct dvb_frontend*,struct dvb_frontend_tune_settings*) ;

__attribute__((used)) static int dtv_set_frontend(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct dvb_frontend_tune_settings fetunesettings;
 u32 rolloff = 0;

 if (dvb_frontend_check_parameters(fe) < 0)
  return -EINVAL;






 dtv_property_legacy_params_sync(fe, c, &fepriv->parameters_out);
 switch (c->delivery_system) {
 case 139:
 case 136:
  c->bandwidth_hz = 6000000;
  break;
 case 137:
  rolloff = 115;
  break;
 case 135:
  rolloff = 113;
  break;
 case 134:
 case 128:
 case 130:
  rolloff = 135;
  break;
 case 133:
  switch (c->rolloff) {
  case 142:
   rolloff = 120;
   break;
  case 141:
   rolloff = 125;
   break;
  default:
  case 140:
   rolloff = 135;
  }
  break;
 default:
  break;
 }
 if (rolloff)
  c->bandwidth_hz = mult_frac(c->symbol_rate, rolloff, 100);


 if (dvb_force_auto_inversion)
  c->inversion = INVERSION_AUTO;





 if (c->hierarchy == HIERARCHY_NONE && c->code_rate_LP == FEC_NONE)
  c->code_rate_LP = FEC_AUTO;


 memset(&fetunesettings, 0, sizeof(struct dvb_frontend_tune_settings));
 if (fe->ops.get_tune_settings && (fe->ops.get_tune_settings(fe, &fetunesettings) == 0)) {
  fepriv->min_delay = (fetunesettings.min_delay_ms * HZ) / 1000;
  fepriv->max_drift = fetunesettings.max_drift;
  fepriv->step_size = fetunesettings.step_size;
 } else {

  switch (c->delivery_system) {
  case 134:
  case 133:
  case 130:
  case 128:
  case 137:
  case 135:
   fepriv->min_delay = HZ / 20;
   fepriv->step_size = c->symbol_rate / 16000;
   fepriv->max_drift = c->symbol_rate / 2000;
   break;
  case 132:
  case 131:
  case 129:
  case 138:
   fepriv->min_delay = HZ / 20;
   fepriv->step_size = dvb_frontend_get_stepsize(fe) * 2;
   fepriv->max_drift = (dvb_frontend_get_stepsize(fe) * 2) + 1;
   break;
  default:




   fepriv->min_delay = HZ / 20;
   fepriv->step_size = 0;
   fepriv->max_drift = 0;
   break;
  }
 }
 if (dvb_override_tune_delay > 0)
  fepriv->min_delay = (dvb_override_tune_delay * HZ) / 1000;

 fepriv->state = FESTATE_RETUNE;


 fepriv->algo_status |= DVBFE_ALGO_SEARCH_AGAIN;

 dvb_frontend_clear_events(fe);
 dvb_frontend_add_event(fe, 0);
 dvb_frontend_wakeup(fe);
 fepriv->status = 0;

 return 0;
}
