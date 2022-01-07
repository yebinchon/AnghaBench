
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {int update_lock; int ** temp; int ** reg_temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM75_TEMP_TO_REG (long) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_temp (struct nct6775_data*,int ,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_temp(struct device *dev, struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int index = sattr->index;
 int err;
 long val;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 data->temp[index][nr] = LM75_TEMP_TO_REG(val);
 nct6775_write_temp(data, data->reg_temp[index][nr],
      data->temp[index][nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
