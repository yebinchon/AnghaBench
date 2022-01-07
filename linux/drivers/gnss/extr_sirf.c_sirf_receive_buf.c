
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int active; int gdev_mutex; scalar_t__ open; int power_wait; int wakeup; struct gnss_device* gdev; } ;
struct serdev_device {int dummy; } ;
struct gnss_device {int dummy; } ;


 int gnss_insert_raw (struct gnss_device*,unsigned char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sirf_data* serdev_device_get_drvdata (struct serdev_device*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int sirf_receive_buf(struct serdev_device *serdev,
    const unsigned char *buf, size_t count)
{
 struct sirf_data *data = serdev_device_get_drvdata(serdev);
 struct gnss_device *gdev = data->gdev;
 int ret = 0;

 if (!data->wakeup && !data->active) {
  data->active = 1;
  wake_up_interruptible(&data->power_wait);
 }

 mutex_lock(&data->gdev_mutex);
 if (data->open)
  ret = gnss_insert_raw(gdev, buf, count);
 mutex_unlock(&data->gdev_mutex);

 return ret;
}
