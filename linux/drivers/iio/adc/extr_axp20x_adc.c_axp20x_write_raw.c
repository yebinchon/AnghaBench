
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct axp20x_adc_iio {int regmap; } ;



 int AXP20X_GPIO10_IN_RANGE ;
 unsigned int AXP20X_GPIO10_IN_RANGE_GPIO0 ;
 unsigned int AXP20X_GPIO10_IN_RANGE_GPIO0_VAL (int) ;
 unsigned int AXP20X_GPIO10_IN_RANGE_GPIO1 ;
 unsigned int AXP20X_GPIO10_IN_RANGE_GPIO1_VAL (int) ;

 int EINVAL ;
 long IIO_CHAN_INFO_OFFSET ;
 struct axp20x_adc_iio* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int axp20x_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int val, int val2,
       long mask)
{
 struct axp20x_adc_iio *info = iio_priv(indio_dev);
 unsigned int reg, regval;





 if (mask != IIO_CHAN_INFO_OFFSET)
  return -EINVAL;

 if (val != 0 && val != 700000)
  return -EINVAL;

 val = val ? 1 : 0;

 switch (chan->channel) {
 case 129:
  reg = AXP20X_GPIO10_IN_RANGE_GPIO0;
  regval = AXP20X_GPIO10_IN_RANGE_GPIO0_VAL(val);
  break;

 case 128:
  reg = AXP20X_GPIO10_IN_RANGE_GPIO1;
  regval = AXP20X_GPIO10_IN_RANGE_GPIO1_VAL(val);
  break;

 default:
  return -EINVAL;
 }

 return regmap_update_bits(info->regmap, AXP20X_GPIO10_IN_RANGE, reg,
      regval);
}
