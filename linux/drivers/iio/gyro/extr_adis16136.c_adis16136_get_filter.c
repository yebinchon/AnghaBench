
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_dev {int mlock; } ;
struct adis16136 {int adis; } ;


 int ADIS16136_REG_AVG_CNT ;
 int IIO_VAL_INT ;
 unsigned int* adis16136_3db_divisors ;
 int adis16136_get_freq (struct adis16136*,unsigned int*) ;
 int adis_read_reg_16 (int *,int ,int*) ;
 struct adis16136* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adis16136_get_filter(struct iio_dev *indio_dev, int *val)
{
 struct adis16136 *adis16136 = iio_priv(indio_dev);
 unsigned int freq;
 uint16_t val16;
 int ret;

 mutex_lock(&indio_dev->mlock);

 ret = adis_read_reg_16(&adis16136->adis, ADIS16136_REG_AVG_CNT, &val16);
 if (ret < 0)
  goto err_unlock;

 ret = adis16136_get_freq(adis16136, &freq);
 if (ret < 0)
  goto err_unlock;

 *val = freq / adis16136_3db_divisors[val16 & 0x07];

err_unlock:
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : IIO_VAL_INT;
}
