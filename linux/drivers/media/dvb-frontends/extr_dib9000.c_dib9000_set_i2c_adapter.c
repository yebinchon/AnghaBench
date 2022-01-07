
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_2__ {struct i2c_adapter* i2c_adap; } ;
struct dib9000_state {TYPE_1__ i2c; } ;



int dib9000_set_i2c_adapter(struct dvb_frontend *fe, struct i2c_adapter *i2c)
{
 struct dib9000_state *st = fe->demodulator_priv;

 st->i2c.i2c_adap = i2c;
 return 0;
}
