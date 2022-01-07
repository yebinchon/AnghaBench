
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;


 int AD5761_ADDR_DAC_WRITE ;
 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int ad5761_spi_write (struct iio_dev*,int ,int) ;

__attribute__((used)) static int ad5761_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long mask)
{
 u16 aux;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val2 || (val << chan->scan_type.shift) > 0xffff || val < 0)
  return -EINVAL;

 aux = val << chan->scan_type.shift;

 return ad5761_spi_write(indio_dev, AD5761_ADDR_DAC_WRITE, aux);
}
