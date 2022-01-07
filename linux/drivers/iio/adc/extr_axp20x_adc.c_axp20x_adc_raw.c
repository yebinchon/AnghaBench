
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; scalar_t__ channel; int address; } ;
struct axp20x_adc_iio {int regmap; } ;


 scalar_t__ AXP20X_BATT_DISCHRG_I ;
 scalar_t__ IIO_CURRENT ;
 int IIO_VAL_INT ;
 int axp20x_read_variable_width (int ,int ,int) ;
 struct axp20x_adc_iio* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int axp20x_adc_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan, int *val)
{
 struct axp20x_adc_iio *info = iio_priv(indio_dev);
 int size = 12;






 if (chan->type == IIO_CURRENT && chan->channel == AXP20X_BATT_DISCHRG_I)
  size = 13;
 else
  size = 12;

 *val = axp20x_read_variable_width(info->regmap, chan->address, size);
 if (*val < 0)
  return *val;

 return IIO_VAL_INT;
}
