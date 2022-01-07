
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dac {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;

 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int stm32_dac_set_value (struct stm32_dac*,int ,int) ;

__attribute__((used)) static int stm32_dac_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct stm32_dac *dac = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return stm32_dac_set_value(dac, chan->channel, val);
 default:
  return -EINVAL;
 }
}
