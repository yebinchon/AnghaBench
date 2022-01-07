
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct itg3200 {int i2c; } ;
struct iio_dev {int dummy; } ;


 int i2c_smbus_read_byte_data (int ,int) ;
 struct itg3200* iio_priv (struct iio_dev*) ;

int itg3200_read_reg_8(struct iio_dev *indio_dev,
  u8 reg_address, u8 *val)
{
 struct itg3200 *st = iio_priv(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(st->i2c, reg_address);
 if (ret < 0)
  return ret;
 *val = ret;
 return 0;
}
