
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct adis16136 {int adis; } ;


 int ADIS16136_REG_GYRO_OFF2 ;
 int EINVAL ;


 int adis16136_set_filter (struct iio_dev*,int) ;
 int adis_write_reg_32 (int *,int ,int) ;
 struct adis16136* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16136_write_raw(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int val, int val2, long info)
{
 struct adis16136 *adis16136 = iio_priv(indio_dev);

 switch (info) {
 case 129:
  return adis_write_reg_32(&adis16136->adis,
   ADIS16136_REG_GYRO_OFF2, val);
 case 128:
  return adis16136_set_filter(indio_dev, val);
 default:
  break;
 }

 return -EINVAL;
}
