
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef enum ads8688_range { ____Placeholder_ads8688_range } ads8688_range ;


 unsigned int ADS8688_PROG_REG_RANGE_CH (int ) ;
 int ads8688_prog_write (struct iio_dev*,unsigned int,int) ;

__attribute__((used)) static int ads8688_write_reg_range(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       enum ads8688_range range)
{
 unsigned int tmp;
 int ret;

 tmp = ADS8688_PROG_REG_RANGE_CH(chan->channel);
 ret = ads8688_prog_write(indio_dev, tmp, range);

 return ret;
}
