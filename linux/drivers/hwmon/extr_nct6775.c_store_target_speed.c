
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {int update_lock; int * target_speed; int * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long clamp_val (unsigned long,int ,unsigned int) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int fan_to_reg (unsigned long,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_update_registers (struct nct6775_data*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_target_speed(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;
 u16 speed;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(val, 0, 1350000U);
 speed = fan_to_reg(val, data->fan_div[nr]);

 mutex_lock(&data->update_lock);
 data->target_speed[nr] = speed;
 pwm_update_registers(data, nr);
 mutex_unlock(&data->update_lock);
 return count;
}
