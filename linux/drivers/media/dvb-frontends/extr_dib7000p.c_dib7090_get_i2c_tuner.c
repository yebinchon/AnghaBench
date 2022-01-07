
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {struct i2c_adapter dib7090_tuner_adap; } ;



__attribute__((used)) static struct i2c_adapter *dib7090_get_i2c_tuner(struct dvb_frontend *fe)
{
 struct dib7000p_state *st = fe->demodulator_priv;
 return &st->dib7090_tuner_adap;
}
