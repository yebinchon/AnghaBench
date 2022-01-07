
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_custom {int enable; int mutex; int hsdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct hid_sensor_custom* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_hub_device_close (int ) ;
 int sensor_hub_device_open (int ) ;
 int set_power_report_state (struct hid_sensor_custom*,int) ;

__attribute__((used)) static ssize_t enable_sensor_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct hid_sensor_custom *sensor_inst = dev_get_drvdata(dev);
 int value;
 int ret = -EINVAL;

 if (kstrtoint(buf, 0, &value) != 0)
  return -EINVAL;

 mutex_lock(&sensor_inst->mutex);
 if (value && !sensor_inst->enable) {
  ret = sensor_hub_device_open(sensor_inst->hsdev);
  if (ret)
   goto unlock_state;

  ret = set_power_report_state(sensor_inst, 1);
  if (ret) {
   sensor_hub_device_close(sensor_inst->hsdev);
   goto unlock_state;
  }
  sensor_inst->enable = 1;
 } else if (!value && sensor_inst->enable) {
  ret = set_power_report_state(sensor_inst, 0);
  sensor_hub_device_close(sensor_inst->hsdev);
  sensor_inst->enable = 0;
 }
unlock_state:
 mutex_unlock(&sensor_inst->mutex);
 if (ret < 0)
  return ret;

 return count;
}
