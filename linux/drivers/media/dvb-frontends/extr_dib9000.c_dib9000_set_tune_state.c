
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int tune_state; int status; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;


 int CT_DEMOD_START ;
 int FE_STATUS_TUNE_PENDING ;

__attribute__((used)) static int dib9000_set_tune_state(struct dvb_frontend *fe, enum frontend_tune_state tune_state)
{
 struct dib9000_state *state = fe->demodulator_priv;
 state->tune_state = tune_state;
 if (tune_state == CT_DEMOD_START)
  state->status = FE_STATUS_TUNE_PENDING;

 return 0;
}
