
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int dummy; } ;
struct ad7303_state {int config; int vdd_reg; int vref_reg; } ;


 int AD7303_CFG_EXTERNAL_VREF ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7303_get_vref(struct ad7303_state *st,
 struct iio_chan_spec const *chan)
{
 int ret;

 if (st->config & AD7303_CFG_EXTERNAL_VREF)
  return regulator_get_voltage(st->vref_reg);

 ret = regulator_get_voltage(st->vdd_reg);
 if (ret < 0)
  return ret;
 return ret / 2;
}
