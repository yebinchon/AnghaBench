
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {int auto_pwm_num; int update_lock; int ** auto_temp; int * REG_CRITICAL_TEMP; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int EINVAL ;
 int NCT6775_AUTO_TEMP (struct nct6775_data*,int,int) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_auto_temp(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int point = sattr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;
 if (val > 255000)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->auto_temp[nr][point] = DIV_ROUND_CLOSEST(val, 1000);
 if (point < data->auto_pwm_num) {
  nct6775_write_value(data,
        NCT6775_AUTO_TEMP(data, nr, point),
        data->auto_temp[nr][point]);
 } else {
  nct6775_write_value(data, data->REG_CRITICAL_TEMP[nr],
        data->auto_temp[nr][point]);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
