
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct adis16480 {int adis; } ;


 int ADIS16480_REG_SLP_CNT ;
 int BIT (int) ;
 int adis_write_reg_16 (int *,int ,int ) ;
 int dev_err (int *,char*,int) ;
 struct adis16480* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16480_stop_device(struct iio_dev *indio_dev)
{
 struct adis16480 *st = iio_priv(indio_dev);
 int ret;

 ret = adis_write_reg_16(&st->adis, ADIS16480_REG_SLP_CNT, BIT(9));
 if (ret)
  dev_err(&indio_dev->dev,
   "Could not power down device: %d\n", ret);

 return ret;
}
