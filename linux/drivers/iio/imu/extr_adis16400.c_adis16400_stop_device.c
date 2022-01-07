
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct adis16400_state {int adis; } ;


 int ADIS16400_SLP_CNT ;
 int ADIS16400_SLP_CNT_POWER_OFF ;
 int adis_write_reg_16 (int *,int ,int ) ;
 int dev_err (int *,char*) ;
 struct adis16400_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16400_stop_device(struct iio_dev *indio_dev)
{
 struct adis16400_state *st = iio_priv(indio_dev);
 int ret;

 ret = adis_write_reg_16(&st->adis, ADIS16400_SLP_CNT,
   ADIS16400_SLP_CNT_POWER_OFF);
 if (ret)
  dev_err(&indio_dev->dev,
   "problem with turning device off: SLP_CNT");

 return ret;
}
