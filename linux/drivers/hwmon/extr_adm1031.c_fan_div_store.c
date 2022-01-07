
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int* fan_div; int* fan_min; int update_lock; scalar_t__ valid; struct i2c_client* client; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1031_REG_FAN_DIV (int) ;
 int ADM1031_REG_FAN_MIN (int) ;
 int EINVAL ;
 int FAN_DIV_FROM_REG (int) ;
 void* adm1031_read_value (struct i2c_client*,int ) ;
 int adm1031_write_value (struct i2c_client*,int ,int) ;
 struct adm1031_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct adm1031_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int nr = to_sensor_dev_attr(attr)->index;
 long val;
 u8 tmp;
 int old_div;
 int new_min;
 int ret;

 ret = kstrtol(buf, 10, &val);
 if (ret)
  return ret;

 tmp = val == 8 ? 0xc0 :
       val == 4 ? 0x80 :
       val == 2 ? 0x40 :
       val == 1 ? 0x00 :
       0xff;
 if (tmp == 0xff)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 data->fan_div[nr] = adm1031_read_value(client,
            ADM1031_REG_FAN_DIV(nr));
 data->fan_min[nr] = adm1031_read_value(client,
            ADM1031_REG_FAN_MIN(nr));


 old_div = FAN_DIV_FROM_REG(data->fan_div[nr]);
 data->fan_div[nr] = tmp | (0x3f & data->fan_div[nr]);
 new_min = data->fan_min[nr] * old_div / val;
 data->fan_min[nr] = new_min > 0xff ? 0xff : new_min;

 adm1031_write_value(client, ADM1031_REG_FAN_DIV(nr),
       data->fan_div[nr]);
 adm1031_write_value(client, ADM1031_REG_FAN_MIN(nr),
       data->fan_min[nr]);


 data->valid = 0;
 mutex_unlock(&data->update_lock);
 return count;
}
