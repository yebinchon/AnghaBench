
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tmp401_data {scalar_t__ kind; int** temp; int update_lock; int config; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int nr; int index; } ;


 size_t EINVAL ;
 int ** TMP401_TEMP_MSB_WRITE ;
 int ** TMP432_TEMP_MSB_WRITE ;
 struct tmp401_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tmp401_temp_to_register (long,int ,int) ;
 scalar_t__ tmp432 ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 int nr = to_sensor_dev_attr_2(devattr)->nr;
 int index = to_sensor_dev_attr_2(devattr)->index;
 struct tmp401_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 u16 reg;
 u8 regaddr;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 reg = tmp401_temp_to_register(val, data->config, nr == 3 ? 8 : 4);

 mutex_lock(&data->update_lock);

 regaddr = data->kind == tmp432 ? TMP432_TEMP_MSB_WRITE[nr][index]
           : TMP401_TEMP_MSB_WRITE[nr][index];
 if (nr == 3) {
  i2c_smbus_write_byte_data(client, regaddr, reg >> 8);
 } else {

  i2c_smbus_write_word_swapped(client, regaddr, reg);
 }
 data->temp[nr][index] = reg;

 mutex_unlock(&data->update_lock);

 return count;
}
