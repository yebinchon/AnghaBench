
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0367_state {struct stv0367_state* cab_state; struct stv0367_state* ter_state; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;


 int kfree (struct stv0367_state*) ;

__attribute__((used)) static void stv0367_release(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;

 kfree(state->ter_state);
 kfree(state->cab_state);
 kfree(state);
}
