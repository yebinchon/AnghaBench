
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {struct i2c_adapter component_bus; } ;



struct i2c_adapter *dib9000_get_component_bus_interface(struct dvb_frontend *fe)
{
 struct dib9000_state *st = fe->demodulator_priv;
 return &st->component_bus;
}
