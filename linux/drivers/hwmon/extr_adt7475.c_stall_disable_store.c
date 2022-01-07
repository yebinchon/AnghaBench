
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {scalar_t__ index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int lock; int * enh_acoustics; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int BIT (scalar_t__) ;
 size_t EINVAL ;
 int REG_ENHANCE_ACOUSTICS1 ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t stall_disable_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 u8 mask = BIT(5 + sattr->index);

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 data->enh_acoustics[0] &= ~mask;
 if (val)
  data->enh_acoustics[0] |= mask;

 i2c_smbus_write_byte_data(client, REG_ENHANCE_ACOUSTICS1,
      data->enh_acoustics[0]);

 mutex_unlock(&data->lock);

 return count;
}
