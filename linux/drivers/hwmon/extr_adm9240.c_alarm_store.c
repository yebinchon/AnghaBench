
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int update_lock; scalar_t__ valid; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADM9240_REG_CHASSIS_CLEAR ;
 size_t EINVAL ;
 int dev_dbg (int *,char*) ;
 struct adm9240_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t alarm_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct adm9240_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) || val != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 i2c_smbus_write_byte_data(client, ADM9240_REG_CHASSIS_CLEAR, 0x80);
 data->valid = 0;
 mutex_unlock(&data->update_lock);
 dev_dbg(&client->dev, "chassis intrusion latch cleared\n");

 return count;
}
