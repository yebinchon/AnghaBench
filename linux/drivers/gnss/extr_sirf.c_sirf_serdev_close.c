
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {scalar_t__ serdev_count; int serdev_mutex; int serdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serdev_device_close (int ) ;

__attribute__((used)) static void sirf_serdev_close(struct sirf_data *data)
{
 mutex_lock(&data->serdev_mutex);
 if (--data->serdev_count == 0)
  serdev_device_close(data->serdev);
 mutex_unlock(&data->serdev_mutex);
}
