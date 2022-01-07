
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_bulk_data {int consumer; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t address; size_t channel; TYPE_1__ scan_type; } ;
struct ad5449 {int* dac_cache; struct regulator_bulk_data* vref_reg; int has_sdo; } ;


 int AD5449_CMD_READ (size_t) ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5449_read (struct iio_dev*,int ,int*) ;
 struct ad5449* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad5449_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct ad5449 *st = iio_priv(indio_dev);
 struct regulator_bulk_data *reg;
 int scale_uv;
 int ret;

 switch (info) {
 case 129:
  if (st->has_sdo) {
   ret = ad5449_read(indio_dev,
    AD5449_CMD_READ(chan->address), val);
   if (ret)
    return ret;
   *val &= 0xfff;
  } else {
   *val = st->dac_cache[chan->address];
  }

  return IIO_VAL_INT;
 case 128:
  reg = &st->vref_reg[chan->channel];
  scale_uv = regulator_get_voltage(reg->consumer);
  if (scale_uv < 0)
   return scale_uv;

  *val = scale_uv / 1000;
  *val2 = chan->scan_type.realbits;

  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }

 return -EINVAL;
}
