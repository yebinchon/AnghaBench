
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc47m192_data {int* temp_offset; int update_lock; struct i2c_client* client; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SMSC47M192_REG_SFR ;
 int SMSC47M192_REG_TEMP_OFFSET (int) ;
 int TEMP_TO_REG (long) ;
 struct smsc47m192_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_offset_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct smsc47m192_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 sfr = i2c_smbus_read_byte_data(client, SMSC47M192_REG_SFR);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_offset[nr] = TEMP_TO_REG(val);
 if (nr > 1)
  i2c_smbus_write_byte_data(client,
   SMSC47M192_REG_TEMP_OFFSET(nr), data->temp_offset[nr]);
 else if (data->temp_offset[nr] != 0) {




  i2c_smbus_write_byte_data(client, SMSC47M192_REG_SFR,
     (sfr & 0xef) | (nr == 0 ? 0x10 : 0));
  data->temp_offset[1-nr] = 0;
  i2c_smbus_write_byte_data(client,
   SMSC47M192_REG_TEMP_OFFSET(nr), data->temp_offset[nr]);
 } else if ((sfr & 0x10) == (nr == 0 ? 0x10 : 0))
  i2c_smbus_write_byte_data(client,
     SMSC47M192_REG_TEMP_OFFSET(nr), 0);
 mutex_unlock(&data->update_lock);
 return count;
}
