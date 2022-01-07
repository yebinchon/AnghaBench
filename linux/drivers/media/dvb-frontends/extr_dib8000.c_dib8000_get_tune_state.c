
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int tune_state; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;



__attribute__((used)) static enum frontend_tune_state dib8000_get_tune_state(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 return state->tune_state;
}
