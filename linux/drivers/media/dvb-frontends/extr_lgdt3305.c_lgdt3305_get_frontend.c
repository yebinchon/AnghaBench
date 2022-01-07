
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int current_frequency; int current_modulation; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int modulation; } ;


 int lg_dbg (char*) ;

__attribute__((used)) static int lgdt3305_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *p)
{
 struct lgdt3305_state *state = fe->demodulator_priv;

 lg_dbg("\n");

 p->modulation = state->current_modulation;
 p->frequency = state->current_frequency;
 return 0;
}
