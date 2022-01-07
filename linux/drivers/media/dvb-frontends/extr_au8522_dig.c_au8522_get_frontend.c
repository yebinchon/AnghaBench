
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct au8522_state* demodulator_priv; } ;
struct dtv_frontend_properties {int modulation; int frequency; } ;
struct au8522_state {int current_modulation; int current_frequency; } ;



__attribute__((used)) static int au8522_get_frontend(struct dvb_frontend *fe,
          struct dtv_frontend_properties *c)
{
 struct au8522_state *state = fe->demodulator_priv;

 c->frequency = state->current_frequency;
 c->modulation = state->current_modulation;

 return 0;
}
