
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ltc1660_priv {int* value; TYPE_1__* spi; int vref_reg; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_2__ scan_type; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int dev_err (int *,char*,int) ;
 struct ltc1660_priv* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ltc1660_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int *val,
  int *val2,
  long mask)
{
 struct ltc1660_priv *priv = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  *val = priv->value[chan->channel];
  return IIO_VAL_INT;
 case 128:
  *val = regulator_get_voltage(priv->vref_reg);
  if (*val < 0) {
   dev_err(&priv->spi->dev, "failed to read vref regulator: %d\n",
     *val);
   return *val;
  }


  *val /= 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
