
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv0299_state {TYPE_1__* config; } ;
struct dvb_frontend_tune_settings {int step_size; int max_drift; int min_delay_ms; } ;
struct dtv_frontend_properties {int symbol_rate; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stv0299_state* demodulator_priv; } ;
struct TYPE_2__ {int min_delay_ms; } ;



__attribute__((used)) static int stv0299_get_tune_settings(struct dvb_frontend* fe, struct dvb_frontend_tune_settings* fesettings)
{
 struct stv0299_state* state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 fesettings->min_delay_ms = state->config->min_delay_ms;
 if (p->symbol_rate < 10000000) {
  fesettings->step_size = p->symbol_rate / 32000;
  fesettings->max_drift = 5000;
 } else {
  fesettings->step_size = p->symbol_rate / 16000;
  fesettings->max_drift = p->symbol_rate / 2000;
 }
 return 0;
}
