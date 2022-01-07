
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; int step_size; int max_drift; } ;
struct dtv_frontend_properties {int symbol_rate; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;



__attribute__((used)) static int m88rs2000_get_tune_settings(struct dvb_frontend *fe,
 struct dvb_frontend_tune_settings *tune)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 if (c->symbol_rate > 3000000)
  tune->min_delay_ms = 2000;
 else
  tune->min_delay_ms = 3000;

 tune->step_size = c->symbol_rate / 16000;
 tune->max_drift = c->symbol_rate / 2000;

 return 0;
}
