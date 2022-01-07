
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct bmc150_accel_data {unsigned int watermark; int mutex; } ;


 unsigned int BMC150_ACCEL_FIFO_LENGTH ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_set_watermark(struct iio_dev *indio_dev, unsigned val)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);

 if (val > BMC150_ACCEL_FIFO_LENGTH)
  val = BMC150_ACCEL_FIFO_LENGTH;

 mutex_lock(&data->mutex);
 data->watermark = val;
 mutex_unlock(&data->mutex);

 return 0;
}
