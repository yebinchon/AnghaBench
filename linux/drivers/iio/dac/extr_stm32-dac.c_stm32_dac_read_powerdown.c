
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int stm32_dac_is_enabled (struct iio_dev*,int ) ;

__attribute__((used)) static ssize_t stm32_dac_read_powerdown(struct iio_dev *indio_dev,
     uintptr_t private,
     const struct iio_chan_spec *chan,
     char *buf)
{
 int ret = stm32_dac_is_enabled(indio_dev, chan->channel);

 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", ret ? 0 : 1);
}
