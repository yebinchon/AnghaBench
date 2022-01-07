
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int tsl2772_chip_status; int als_mutex; int prox_mutex; } ;
struct iio_dev {int dummy; } ;


 int TSL2772_CHIP_WORKING ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsl2772_chip_off (struct iio_dev*) ;
 int tsl2772_chip_on (struct iio_dev*) ;

__attribute__((used)) static int tsl2772_invoke_change(struct iio_dev *indio_dev)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int device_status = chip->tsl2772_chip_status;
 int ret;

 mutex_lock(&chip->als_mutex);
 mutex_lock(&chip->prox_mutex);

 if (device_status == TSL2772_CHIP_WORKING) {
  ret = tsl2772_chip_off(indio_dev);
  if (ret < 0)
   goto unlock;
 }

 ret = tsl2772_chip_on(indio_dev);

unlock:
 mutex_unlock(&chip->prox_mutex);
 mutex_unlock(&chip->als_mutex);

 return ret;
}
