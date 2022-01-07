
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct f71805f_data {int update_lock; int * temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int F71805F_REG_TEMP_HYST (int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write8 (struct f71805f_data*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temp_to_reg (long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_hyst(struct device *dev, struct device_attribute
        *devattr, const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int nr = attr->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_hyst[nr] = temp_to_reg(val);
 f71805f_write8(data, F71805F_REG_TEMP_HYST(nr), data->temp_hyst[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
