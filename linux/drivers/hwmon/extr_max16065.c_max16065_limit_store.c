
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct max16065_data {int update_lock; int client; int * range; int ** limit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LIMIT_TO_MV (int,int ) ;
 int MAX16065_LIMIT (size_t,size_t) ;
 int MV_TO_LIMIT (unsigned long,int ) ;
 struct max16065_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t max16065_limit_store(struct device *dev,
        struct device_attribute *da,
        const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(da);
 struct max16065_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;
 int limit;

 err = kstrtoul(buf, 10, &val);
 if (unlikely(err < 0))
  return err;

 limit = MV_TO_LIMIT(val, data->range[attr2->index]);

 mutex_lock(&data->update_lock);
 data->limit[attr2->nr][attr2->index]
   = LIMIT_TO_MV(limit, data->range[attr2->index]);
 i2c_smbus_write_byte_data(data->client,
      MAX16065_LIMIT(attr2->nr, attr2->index),
      limit);
 mutex_unlock(&data->update_lock);

 return count;
}
