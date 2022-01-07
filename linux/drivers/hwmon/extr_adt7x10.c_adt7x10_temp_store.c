
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7x10_data {int update_lock; int * temp; } ;
typedef int ssize_t ;


 int * ADT7X10_REG_TEMP ;
 int ADT7X10_TEMP_TO_REG (long) ;
 int adt7x10_write_word (struct device*,int ,int ) ;
 struct adt7x10_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t adt7x10_temp_store(struct device *dev,
      struct device_attribute *da,
      const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct adt7x10_data *data = dev_get_drvdata(dev);
 int nr = attr->index;
 long temp;
 int ret;

 ret = kstrtol(buf, 10, &temp);
 if (ret)
  return ret;

 mutex_lock(&data->update_lock);
 data->temp[nr] = ADT7X10_TEMP_TO_REG(temp);
 ret = adt7x10_write_word(dev, ADT7X10_REG_TEMP[nr], data->temp[nr]);
 if (ret)
  count = ret;
 mutex_unlock(&data->update_lock);
 return count;
}
