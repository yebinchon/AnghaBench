
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct axp20x_adc_iio {int regmap; } ;



 int AXP20X_GPIO10_IN_RANGE ;
 int AXP20X_GPIO10_IN_RANGE_GPIO0 ;
 int AXP20X_GPIO10_IN_RANGE_GPIO1 ;

 int EINVAL ;
 int IIO_VAL_INT ;
 struct axp20x_adc_iio* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int axp20x_adc_offset_voltage(struct iio_dev *indio_dev, int channel,
         int *val)
{
 struct axp20x_adc_iio *info = iio_priv(indio_dev);
 int ret;

 ret = regmap_read(info->regmap, AXP20X_GPIO10_IN_RANGE, val);
 if (ret < 0)
  return ret;

 switch (channel) {
 case 129:
  *val &= AXP20X_GPIO10_IN_RANGE_GPIO0;
  break;

 case 128:
  *val &= AXP20X_GPIO10_IN_RANGE_GPIO1;
  break;

 default:
  return -EINVAL;
 }

 *val = *val ? 700000 : 0;

 return IIO_VAL_INT;
}
