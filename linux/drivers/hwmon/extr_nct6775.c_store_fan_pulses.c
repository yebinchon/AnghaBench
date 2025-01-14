
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* fan_pulses; int* FAN_PULSE_SHIFT; int update_lock; int * REG_FAN_PULSES; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_read_value (struct nct6775_data*,int ) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_fan_pulses(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;
 u8 reg;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (val > 4)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->fan_pulses[nr] = val & 3;
 reg = nct6775_read_value(data, data->REG_FAN_PULSES[nr]);
 reg &= ~(0x03 << data->FAN_PULSE_SHIFT[nr]);
 reg |= (val & 3) << data->FAN_PULSE_SHIFT[nr];
 nct6775_write_value(data, data->REG_FAN_PULSES[nr], reg);
 mutex_unlock(&data->update_lock);

 return count;
}
