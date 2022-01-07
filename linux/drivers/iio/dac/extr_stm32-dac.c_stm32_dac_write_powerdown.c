
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int ssize_t ;


 int stm32_dac_set_enable_state (struct iio_dev*,int ,int) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t stm32_dac_write_powerdown(struct iio_dev *indio_dev,
      uintptr_t private,
      const struct iio_chan_spec *chan,
      const char *buf, size_t len)
{
 bool powerdown;
 int ret;

 ret = strtobool(buf, &powerdown);
 if (ret)
  return ret;

 ret = stm32_dac_set_enable_state(indio_dev, chan->channel, !powerdown);
 if (ret)
  return ret;

 return len;
}
