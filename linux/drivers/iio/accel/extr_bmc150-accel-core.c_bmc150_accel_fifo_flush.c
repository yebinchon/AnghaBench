
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct bmc150_accel_data {int mutex; } ;


 int __bmc150_accel_fifo_flush (struct iio_dev*,unsigned int,int) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_fifo_flush(struct iio_dev *indio_dev, unsigned samples)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 ret = __bmc150_accel_fifo_flush(indio_dev, samples, 0);
 mutex_unlock(&data->mutex);

 return ret;
}
