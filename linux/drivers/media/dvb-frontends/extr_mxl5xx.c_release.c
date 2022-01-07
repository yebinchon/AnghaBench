
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl {scalar_t__ count; struct mxl* base; int mxllist; int mxl; } ;
struct dvb_frontend {struct mxl* demodulator_priv; } ;


 int kfree (struct mxl*) ;
 int list_del (int *) ;

__attribute__((used)) static void release(struct dvb_frontend *fe)
{
 struct mxl *state = fe->demodulator_priv;

 list_del(&state->mxl);

 state->base->count--;
 if (state->base->count == 0) {
  list_del(&state->base->mxllist);
  kfree(state->base);
 }
 kfree(state);
}
