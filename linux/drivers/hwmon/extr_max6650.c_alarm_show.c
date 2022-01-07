
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct max6650_data {int alarm; int valid; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct max6650_data*) ;
 int PTR_ERR (struct max6650_data*) ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t alarm_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct max6650_data *data = max6650_update_device(dev);
 bool alarm;

 if (IS_ERR(data))
  return PTR_ERR(data);

 alarm = data->alarm & attr->index;
 if (alarm) {
  mutex_lock(&data->update_lock);
  data->alarm &= ~attr->index;
  data->valid = 0;
  mutex_unlock(&data->update_lock);
 }

 return sprintf(buf, "%d\n", alarm);
}
