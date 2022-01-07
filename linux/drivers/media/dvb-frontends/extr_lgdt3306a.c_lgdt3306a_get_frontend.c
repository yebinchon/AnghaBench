
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int current_frequency; int current_modulation; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int modulation; } ;


 int dbg_info (char*,int ,int ) ;

__attribute__((used)) static int lgdt3306a_get_frontend(struct dvb_frontend *fe,
      struct dtv_frontend_properties *p)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;

 dbg_info("(%u, %d)\n",
   state->current_frequency, state->current_modulation);

 p->modulation = state->current_modulation;
 p->frequency = state->current_frequency;
 return 0;
}
