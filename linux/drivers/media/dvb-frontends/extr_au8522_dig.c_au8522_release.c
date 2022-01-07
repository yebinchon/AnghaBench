
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct au8522_state* demodulator_priv; } ;
struct au8522_state {int dummy; } ;


 int au8522_release_state (struct au8522_state*) ;

__attribute__((used)) static void au8522_release(struct dvb_frontend *fe)
{
 struct au8522_state *state = fe->demodulator_priv;
 au8522_release_state(state);
}
