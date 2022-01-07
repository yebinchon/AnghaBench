
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int tuner_i2c_adapter; } ;


 int dprintk (char*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct cx24123_state*) ;

__attribute__((used)) static void cx24123_release(struct dvb_frontend *fe)
{
 struct cx24123_state *state = fe->demodulator_priv;
 dprintk("\n");
 i2c_del_adapter(&state->tuner_i2c_adapter);
 kfree(state);
}
