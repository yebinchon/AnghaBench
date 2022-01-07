
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec100_state {int dummy; } ;
struct dvb_frontend {struct ec100_state* demodulator_priv; } ;


 int kfree (struct ec100_state*) ;

__attribute__((used)) static void ec100_release(struct dvb_frontend *fe)
{
 struct ec100_state *state = fe->demodulator_priv;
 kfree(state);
}
