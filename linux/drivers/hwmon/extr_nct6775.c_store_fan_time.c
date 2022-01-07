
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {unsigned long** fan_time; int update_lock; int ** REG_FAN_TIME; int * pwm_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,unsigned long) ;
 unsigned long step_time_to_reg (unsigned long,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_fan_time(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int index = sattr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 val = step_time_to_reg(val, data->pwm_mode[nr]);
 mutex_lock(&data->update_lock);
 data->fan_time[index][nr] = val;
 nct6775_write_value(data, data->REG_FAN_TIME[index][nr], val);
 mutex_unlock(&data->update_lock);
 return count;
}
