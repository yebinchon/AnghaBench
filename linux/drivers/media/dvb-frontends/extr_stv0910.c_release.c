
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {scalar_t__ count; struct stv* base; int stvlist; } ;
struct dvb_frontend {struct stv* demodulator_priv; } ;


 int kfree (struct stv*) ;
 int list_del (int *) ;

__attribute__((used)) static void release(struct dvb_frontend *fe)
{
 struct stv *state = fe->demodulator_priv;

 state->base->count--;
 if (state->base->count == 0) {
  list_del(&state->base->stvlist);
  kfree(state->base);
 }
 kfree(state);
}
