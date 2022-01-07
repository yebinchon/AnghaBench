
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int i2c_master; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 struct i2c_adapter* dibx000_get_i2c_adapter (int *,int ,int) ;

struct i2c_adapter * dib3000mc_get_tuner_i2c_master(struct dvb_frontend *demod, int gating)
{
 struct dib3000mc_state *st = demod->demodulator_priv;
 return dibx000_get_i2c_adapter(&st->i2c_master, DIBX000_I2C_INTERFACE_TUNER, gating);
}
