
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inv_mpu6050_state {int lock; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int inv_mpu6050_set_enable (struct iio_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int inv_mpu_data_rdy_trigger_set_state(struct iio_trigger *trig,
           bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct inv_mpu6050_state *st = iio_priv(indio_dev);
 int result;

 mutex_lock(&st->lock);
 result = inv_mpu6050_set_enable(indio_dev, state);
 mutex_unlock(&st->lock);

 return result;
}
