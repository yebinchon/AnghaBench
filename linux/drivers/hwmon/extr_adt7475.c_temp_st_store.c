
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* enh_acoustics; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (int ) ;
 size_t EINVAL ;
 unsigned char REG_ENHANCE_ACOUSTICS1 ;
 unsigned char REG_ENHANCE_ACOUSTICS2 ;
 int ad7475_st_map ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int find_closest_descending (int,int ,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,int) ;
 scalar_t__ kstrtoul (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_st_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned char reg;
 int shift, idx;
 ulong val;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 switch (sattr->index) {
 case 0:
  reg = REG_ENHANCE_ACOUSTICS1;
  shift = 0;
  idx = 0;
  break;
 case 1:
  reg = REG_ENHANCE_ACOUSTICS2;
  shift = 0;
  idx = 1;
  break;
 case 2:
 default:
  reg = REG_ENHANCE_ACOUSTICS2;
  shift = 4;
  idx = 1;
  break;
 }

 if (val > 0) {
  val = find_closest_descending(val, ad7475_st_map,
           ARRAY_SIZE(ad7475_st_map));
  val |= 0x8;
 }

 mutex_lock(&data->lock);

 data->enh_acoustics[idx] &= ~(0xf << shift);
 data->enh_acoustics[idx] |= (val << shift);

 i2c_smbus_write_byte_data(client, reg, data->enh_acoustics[idx]);

 mutex_unlock(&data->lock);

 return count;
}
