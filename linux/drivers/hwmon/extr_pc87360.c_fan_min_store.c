
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct pc87360_data {int* fan_status; int* fan; int* fan_min; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_DIV_FROM_REG (int) ;
 long FAN_TO_REG (long,int ) ;
 int LD_FAN ;
 int NO_BANK ;
 int PC87360_REG_FAN_MIN (size_t) ;
 int PC87360_REG_FAN_STATUS (size_t) ;
 struct pc87360_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc87360_write_value (struct pc87360_data*,int ,int ,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = dev_get_drvdata(dev);
 long fan_min;
 int err;

 err = kstrtol(buf, 10, &fan_min);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 fan_min = FAN_TO_REG(fan_min,
        FAN_DIV_FROM_REG(data->fan_status[attr->index]));


 while (fan_min > 255
     && (data->fan_status[attr->index] & 0x60) != 0x60) {
  fan_min >>= 1;
  data->fan[attr->index] >>= 1;
  data->fan_status[attr->index] += 0x20;
 }
 data->fan_min[attr->index] = fan_min > 255 ? 255 : fan_min;
 pc87360_write_value(data, LD_FAN, NO_BANK,
       PC87360_REG_FAN_MIN(attr->index),
       data->fan_min[attr->index]);


 pc87360_write_value(data, LD_FAN, NO_BANK,
       PC87360_REG_FAN_STATUS(attr->index),
       data->fan_status[attr->index] & 0xF9);
 mutex_unlock(&data->update_lock);

 return count;
}
