
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iio_dev {int dummy; } ;
struct adis16400_state {int adis; } ;


 int ADIS16400_SENS_AVG ;
 int ARRAY_SIZE (int*) ;
 int* adis16400_3db_divisors ;
 int adis_read_reg_16 (int *,int ,int*) ;
 int adis_write_reg_16 (int *,int ,int) ;
 struct adis16400_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16400_set_filter(struct iio_dev *indio_dev, int sps, int val)
{
 struct adis16400_state *st = iio_priv(indio_dev);
 uint16_t val16;
 int i, ret;

 for (i = ARRAY_SIZE(adis16400_3db_divisors) - 1; i >= 1; i--) {
  if (sps / adis16400_3db_divisors[i] >= val)
   break;
 }

 ret = adis_read_reg_16(&st->adis, ADIS16400_SENS_AVG, &val16);
 if (ret < 0)
  return ret;

 ret = adis_write_reg_16(&st->adis, ADIS16400_SENS_AVG,
      (val16 & ~0x07) | i);
 return ret;
}
