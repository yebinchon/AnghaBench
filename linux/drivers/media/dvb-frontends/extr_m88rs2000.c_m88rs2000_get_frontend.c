
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m88rs2000_state {int symbol_rate; int tuner_frequency; int fec_inner; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;
struct dtv_frontend_properties {int symbol_rate; int frequency; int fec_inner; } ;



__attribute__((used)) static int m88rs2000_get_frontend(struct dvb_frontend *fe,
      struct dtv_frontend_properties *c)
{
 struct m88rs2000_state *state = fe->demodulator_priv;

 c->fec_inner = state->fec_inner;
 c->frequency = state->tuner_frequency;
 c->symbol_rate = state->symbol_rate;
 return 0;
}
