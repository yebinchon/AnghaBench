
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24117_state* demodulator_priv; } ;
struct cx24117_state {int dnxt; int dcur; } ;



__attribute__((used)) static void cx24117_clone_params(struct dvb_frontend *fe)
{
 struct cx24117_state *state = fe->demodulator_priv;
 state->dcur = state->dnxt;
}
