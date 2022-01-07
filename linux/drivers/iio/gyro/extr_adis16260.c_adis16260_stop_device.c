
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dev; } ;
struct adis16260 {int adis; } ;


 int ADIS16260_SLP_CNT ;
 int ADIS16260_SLP_CNT_POWER_OFF ;
 int adis_write_reg_16 (int *,int ,int ) ;
 int dev_err (int *,char*) ;
 struct adis16260* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16260_stop_device(struct iio_dev *indio_dev)
{
 struct adis16260 *adis16260 = iio_priv(indio_dev);
 int ret;
 u16 val = ADIS16260_SLP_CNT_POWER_OFF;

 ret = adis_write_reg_16(&adis16260->adis, ADIS16260_SLP_CNT, val);
 if (ret)
  dev_err(&indio_dev->dev, "problem with turning device off: SLP_CNT");

 return ret;
}
