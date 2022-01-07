
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsys01_dev {int (* convert_and_read ) (int ,int ,int ,int,int*) ;scalar_t__* prom; int lock; int client; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;
typedef int s32 ;


 int TSYS01_ADC_READ ;
 int TSYS01_CONVERSION_START ;
 int* coeff_mul ;
 int div64_s64 (int,int) ;
 struct tsys01_dev* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ,int ,int,int*) ;

__attribute__((used)) static int tsys01_read_temperature(struct iio_dev *indio_dev,
       s32 *temperature)
{
 int ret, i;
 u32 adc;
 s64 temp = 0;
 struct tsys01_dev *dev_data = iio_priv(indio_dev);

 mutex_lock(&dev_data->lock);
 ret = dev_data->convert_and_read(dev_data->client,
      TSYS01_CONVERSION_START,
      TSYS01_ADC_READ, 9000, &adc);
 mutex_unlock(&dev_data->lock);
 if (ret)
  return ret;

 adc >>= 8;


 for (i = 4; i > 0; i--) {
  temp += coeff_mul[i] *
   (s64)dev_data->prom[5 - i];
  temp *= (s64)adc;
  temp = div64_s64(temp, 100000);
 }
 temp *= 10;
 temp += coeff_mul[0] * (s64)dev_data->prom[5];
 temp = div64_s64(temp, 100000);

 *temperature = temp;

 return 0;
}
