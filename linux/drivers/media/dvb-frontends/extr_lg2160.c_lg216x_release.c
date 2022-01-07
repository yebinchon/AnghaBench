
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg216x_state {int dummy; } ;
struct dvb_frontend {struct lg216x_state* demodulator_priv; } ;


 int kfree (struct lg216x_state*) ;
 int lg_dbg (char*) ;

__attribute__((used)) static void lg216x_release(struct dvb_frontend *fe)
{
 struct lg216x_state *state = fe->demodulator_priv;
 lg_dbg("\n");
 kfree(state);
}
