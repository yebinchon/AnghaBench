
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int tune_state; int status; } ;


 int CT_DEMOD_START ;
 int FE_STATUS_TUNE_PENDING ;

__attribute__((used)) static int dib8000_tune_restart_from_demod(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;

 state->status = FE_STATUS_TUNE_PENDING;
 state->tune_state = CT_DEMOD_START;
 return 0;
}
