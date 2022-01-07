
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int status; } ;
typedef int s32 ;



__attribute__((used)) static s32 dib8000_get_status(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 return state->status;
}
