
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {struct i2c_adapter tuner_i2c_adapter; } ;



struct i2c_adapter *
 cx24123_get_tuner_i2c_adapter(struct dvb_frontend *fe)
{
 struct cx24123_state *state = fe->demodulator_priv;
 return &state->tuner_i2c_adapter;
}
