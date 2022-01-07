
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {struct i2c_adapter dib8096p_tuner_adap; } ;



__attribute__((used)) static struct i2c_adapter *dib8096p_get_i2c_tuner(struct dvb_frontend *fe)
{
 struct dib8000_state *st = fe->demodulator_priv;
 return &st->dib8096p_tuner_adap;
}
