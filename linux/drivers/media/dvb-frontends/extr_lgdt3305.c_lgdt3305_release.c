
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int dummy; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;


 int kfree (struct lgdt3305_state*) ;
 int lg_dbg (char*) ;

__attribute__((used)) static void lgdt3305_release(struct dvb_frontend *fe)
{
 struct lgdt3305_state *state = fe->demodulator_priv;
 lg_dbg("\n");
 kfree(state);
}
