
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct adis16136 {int adis; } ;


 int ADIS16136_REG_SLP_CTRL ;
 int adis_write_reg_16 (int *,int ,int) ;
 int dev_err (int *,char*,int) ;
 struct adis16136* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16136_stop_device(struct iio_dev *indio_dev)
{
 struct adis16136 *adis16136 = iio_priv(indio_dev);
 int ret;

 ret = adis_write_reg_16(&adis16136->adis, ADIS16136_REG_SLP_CTRL, 0xff);
 if (ret)
  dev_err(&indio_dev->dev,
   "Could not power down device: %d\n", ret);

 return ret;
}
