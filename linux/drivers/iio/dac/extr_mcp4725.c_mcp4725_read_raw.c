
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_data {int dac_value; int vref_reg; int vdd_reg; int ref_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int MCP472X_REF_VDD ;
 struct mcp4725_data* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int mcp4725_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct mcp4725_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  *val = data->dac_value;
  return IIO_VAL_INT;
 case 128:
  if (data->ref_mode == MCP472X_REF_VDD)
   ret = regulator_get_voltage(data->vdd_reg);
  else
   ret = regulator_get_voltage(data->vref_reg);

  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
