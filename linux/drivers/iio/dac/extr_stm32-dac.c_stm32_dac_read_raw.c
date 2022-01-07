
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {TYPE_2__ scan_type; int channel; } ;
struct TYPE_3__ {int vref_mv; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int stm32_dac_get_value (struct stm32_dac*,int ,int*) ;

__attribute__((used)) static int stm32_dac_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2, long mask)
{
 struct stm32_dac *dac = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  return stm32_dac_get_value(dac, chan->channel, val);
 case 128:
  *val = dac->common->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
