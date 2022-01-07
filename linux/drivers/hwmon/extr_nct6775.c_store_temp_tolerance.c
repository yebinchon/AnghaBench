
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {unsigned long** temp_tolerance; int update_lock; int * REG_CRITICAL_TEMP_TOLERANCE; int tolerance_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 unsigned long clamp_val (int ,int ,int ) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,unsigned long) ;
 int pwm_update_registers (struct nct6775_data*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_temp_tolerance(struct device *dev, struct device_attribute *attr,
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


 val = clamp_val(DIV_ROUND_CLOSEST(val, 1000), 0, data->tolerance_mask);

 mutex_lock(&data->update_lock);
 data->temp_tolerance[index][nr] = val;
 if (index)
  pwm_update_registers(data, nr);
 else
  nct6775_write_value(data,
        data->REG_CRITICAL_TEMP_TOLERANCE[nr],
        val);
 mutex_unlock(&data->update_lock);
 return count;
}
