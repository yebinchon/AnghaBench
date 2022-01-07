
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ADXRS450_DNC1 ;
 int EINVAL ;

 int adxrs450_spi_write_reg_16 (struct iio_dev*,int ,int) ;

__attribute__((used)) static int adxrs450_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val,
         int val2,
         long mask)
{
 int ret;
 switch (mask) {
 case 128:
  if (val < -0x400 || val >= 0x400)
   return -EINVAL;
  ret = adxrs450_spi_write_reg_16(indio_dev,
      ADXRS450_DNC1, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
