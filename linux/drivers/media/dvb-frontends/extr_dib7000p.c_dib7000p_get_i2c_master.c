
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int i2c_master; } ;
typedef enum dibx000_i2c_interface { ____Placeholder_dibx000_i2c_interface } dibx000_i2c_interface ;


 struct i2c_adapter* dibx000_get_i2c_adapter (int *,int,int) ;

__attribute__((used)) static struct i2c_adapter *dib7000p_get_i2c_master(struct dvb_frontend *demod, enum dibx000_i2c_interface intf, int gating)
{
 struct dib7000p_state *st = demod->demodulator_priv;
 return dibx000_get_i2c_adapter(&st->i2c_master, intf, gating);
}
