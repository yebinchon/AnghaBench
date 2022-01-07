
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 unsigned char ADT7470_CFG_LF ;
 unsigned char ADT7470_FREQ_MASK ;
 int ADT7470_FREQ_SHIFT ;
 int ADT7470_REG_CFG ;
 int ADT7470_REG_CFG_2 ;
 int ARRAY_SIZE (int ) ;
 size_t EINVAL ;
 int adt7470_freq_map ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 int find_closest (long,int ,int ) ;
 unsigned char i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned char) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm1_freq_store(struct device *dev,
          struct device_attribute *devattr,
          const char *buf, size_t count)
{
 struct adt7470_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long freq;
 int index;
 int low_freq = ADT7470_CFG_LF;
 unsigned char val;

 if (kstrtol(buf, 10, &freq))
  return -EINVAL;


 index = find_closest(freq, adt7470_freq_map,
        ARRAY_SIZE(adt7470_freq_map));

 if (index >= 8) {
  index -= 8;
  low_freq = 0;
 }

 mutex_lock(&data->lock);

 val = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG);
 i2c_smbus_write_byte_data(client, ADT7470_REG_CFG,
      (val & ~ADT7470_CFG_LF) | low_freq);

 val = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG_2);
 i2c_smbus_write_byte_data(client, ADT7470_REG_CFG_2,
  (val & ~ADT7470_FREQ_MASK) | (index << ADT7470_FREQ_SHIFT));
 mutex_unlock(&data->lock);

 return count;
}
