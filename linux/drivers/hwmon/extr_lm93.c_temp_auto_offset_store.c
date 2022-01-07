
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int* offset; } ;
struct lm93_data {int sfc2; int update_lock; TYPE_1__ block10; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_REG_SFC2 ;
 int LM93_REG_TEMP_OFFSET (int) ;
 int LM93_TEMP_AUTO_OFFSET_TO_REG (int,unsigned long,int,int) ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_offset_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *s_attr = to_sensor_dev_attr_2(attr);
 int nr = s_attr->index;
 int ofs = s_attr->nr;
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 data->sfc2 = lm93_read_byte(client, LM93_REG_SFC2);
 data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
 lm93_write_byte(client, LM93_REG_SFC2, data->sfc2);
 data->block10.offset[ofs] = LM93_TEMP_AUTO_OFFSET_TO_REG(
   data->block10.offset[ofs], val, nr, 1);
 lm93_write_byte(client, LM93_REG_TEMP_OFFSET(ofs),
   data->block10.offset[ofs]);
 mutex_unlock(&data->update_lock);
 return count;
}
