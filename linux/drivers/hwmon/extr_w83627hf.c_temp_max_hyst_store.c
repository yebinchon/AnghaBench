
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct w83627hf_data {int update_lock; int * temp_max_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM75_TEMP_TO_REG (long) ;
 int TEMP_TO_REG (long) ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int * w83627hf_reg_temp_hyst ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int ) ;

__attribute__((used)) static ssize_t
temp_max_hyst_store(struct device *dev, struct device_attribute *devattr,
      const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 u16 tmp;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 tmp = (nr) ? LM75_TEMP_TO_REG(val) : TEMP_TO_REG(val);
 mutex_lock(&data->update_lock);
 data->temp_max_hyst[nr] = tmp;
 w83627hf_write_value(data, w83627hf_reg_temp_hyst[nr], tmp);
 mutex_unlock(&data->update_lock);
 return count;
}
