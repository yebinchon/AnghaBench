
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int serdev_count; int serdev_mutex; int serdev; int speed; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serdev_device_open (int ) ;
 int serdev_device_set_baudrate (int ,int ) ;
 int serdev_device_set_flow_control (int ,int) ;

__attribute__((used)) static int sirf_serdev_open(struct sirf_data *data)
{
 int ret = 0;

 mutex_lock(&data->serdev_mutex);
 if (++data->serdev_count == 1) {
  ret = serdev_device_open(data->serdev);
  if (ret) {
   data->serdev_count--;
   goto out_unlock;
  }

  serdev_device_set_baudrate(data->serdev, data->speed);
  serdev_device_set_flow_control(data->serdev, 0);
 }

out_unlock:
 mutex_unlock(&data->serdev_mutex);

 return ret;
}
