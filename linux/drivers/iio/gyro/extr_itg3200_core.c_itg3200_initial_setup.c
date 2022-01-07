
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct itg3200 {TYPE_1__* i2c; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int ITG3200_REG_ADDRESS ;
 int dev_err (int *,char*,int) ;
 struct itg3200* iio_priv (struct iio_dev*) ;
 int itg3200_enable_full_scale (struct iio_dev*) ;
 int itg3200_read_reg_8 (struct iio_dev*,int ,int*) ;
 int itg3200_reset (struct iio_dev*) ;

__attribute__((used)) static int itg3200_initial_setup(struct iio_dev *indio_dev)
{
 struct itg3200 *st = iio_priv(indio_dev);
 int ret;
 u8 val;

 ret = itg3200_reset(indio_dev);
 if (ret)
  goto err_ret;

 ret = itg3200_read_reg_8(indio_dev, ITG3200_REG_ADDRESS, &val);
 if (ret)
  goto err_ret;

 if (((val >> 1) & 0x3f) != 0x34) {
  dev_err(&st->i2c->dev, "invalid reg value 0x%02x", val);
  ret = -ENXIO;
  goto err_ret;
 }

 ret = itg3200_enable_full_scale(indio_dev);
err_ret:
 return ret;
}
