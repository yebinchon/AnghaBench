
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int* bank1_max_value; unsigned long** bank1_settings; int update_lock; } ;
typedef size_t ssize_t ;


 scalar_t__ ABIT_UGURU_SENSOR_BANK1 ;
 size_t EINVAL ;
 size_t EIO ;
 size_t abituguru_write (struct abituguru_data*,scalar_t__,size_t,unsigned long*,int) ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_bank1_setting(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 unsigned long val;
 ssize_t ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 ret = count;
 val = (val * 255 + data->bank1_max_value[attr->index] / 2) /
  data->bank1_max_value[attr->index];
 if (val > 255)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (data->bank1_settings[attr->index][attr->nr] != val) {
  u8 orig_val = data->bank1_settings[attr->index][attr->nr];
  data->bank1_settings[attr->index][attr->nr] = val;
  if (abituguru_write(data, ABIT_UGURU_SENSOR_BANK1 + 2,
    attr->index, data->bank1_settings[attr->index],
    3) <= attr->nr) {
   data->bank1_settings[attr->index][attr->nr] = orig_val;
   ret = -EIO;
  }
 }
 mutex_unlock(&data->update_lock);
 return ret;
}
