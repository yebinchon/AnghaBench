
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int fifo_mode; int mutex; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bmc150_accel_get_fifo_state(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 bool state;

 mutex_lock(&data->mutex);
 state = data->fifo_mode;
 mutex_unlock(&data->mutex);

 return sprintf(buf, "%d\n", state);
}
