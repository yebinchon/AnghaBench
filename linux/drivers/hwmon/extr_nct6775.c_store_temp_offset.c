
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {long* temp_offset; int update_lock; int * REG_TEMP_OFFSET; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (long,int) ;
 long clamp_val (int ,int,int) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_temp_offset(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(DIV_ROUND_CLOSEST(val, 1000), -128, 127);

 mutex_lock(&data->update_lock);
 data->temp_offset[nr] = val;
 nct6775_write_value(data, data->REG_TEMP_OFFSET[nr], val);
 mutex_unlock(&data->update_lock);

 return count;
}
