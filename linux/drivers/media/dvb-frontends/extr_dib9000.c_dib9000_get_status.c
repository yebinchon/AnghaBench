
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int status; } ;



__attribute__((used)) static u32 dib9000_get_status(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;
 return state->status;
}
