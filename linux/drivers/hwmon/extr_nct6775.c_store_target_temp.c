
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* target_temp; int update_lock; int target_temp_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 unsigned long clamp_val (int ,int ,int ) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_update_registers (struct nct6775_data*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_target_temp(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(DIV_ROUND_CLOSEST(val, 1000), 0,
   data->target_temp_mask);

 mutex_lock(&data->update_lock);
 data->target_temp[nr] = val;
 pwm_update_registers(data, nr);
 mutex_unlock(&data->update_lock);
 return count;
}
