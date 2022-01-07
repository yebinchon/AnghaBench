
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1411_state {int current_modulation; int current_frequency; } ;
struct dvb_frontend {struct s5h1411_state* demodulator_priv; } ;
struct dtv_frontend_properties {int modulation; int frequency; } ;



__attribute__((used)) static int s5h1411_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct s5h1411_state *state = fe->demodulator_priv;

 p->frequency = state->current_frequency;
 p->modulation = state->current_modulation;

 return 0;
}
