
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {size_t index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int update_lock; int ** bank1_settings; } ;
typedef size_t ssize_t ;


 scalar_t__ ABIT_UGURU_SENSOR_BANK1 ;
 size_t EIO ;
 int abituguru_write (struct abituguru_data*,scalar_t__,size_t,int *,int) ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_bank1_mask(struct device *dev,
 struct device_attribute *devattr, const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 ssize_t ret;
 u8 orig_val;
 unsigned long mask;

 ret = kstrtoul(buf, 10, &mask);
 if (ret)
  return ret;

 ret = count;
 mutex_lock(&data->update_lock);
 orig_val = data->bank1_settings[attr->index][0];

 if (mask)
  data->bank1_settings[attr->index][0] |= attr->nr;
 else
  data->bank1_settings[attr->index][0] &= ~attr->nr;

 if ((data->bank1_settings[attr->index][0] != orig_val) &&
   (abituguru_write(data,
   ABIT_UGURU_SENSOR_BANK1 + 2, attr->index,
   data->bank1_settings[attr->index], 3) < 1)) {
  data->bank1_settings[attr->index][0] = orig_val;
  ret = -EIO;
 }
 mutex_unlock(&data->update_lock);
 return ret;
}
