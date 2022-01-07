
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int* fan_div; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_FAN_DIV_0_3 ;
 int ADM1026_REG_FAN_DIV_4_7 ;
 int DIV_FROM_REG (int) ;
 int DIV_TO_REG (long) ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int fixup_fan_min (struct device*,int,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int orig_div, new_div;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 new_div = DIV_TO_REG(val);

 mutex_lock(&data->update_lock);
 orig_div = data->fan_div[nr];
 data->fan_div[nr] = DIV_FROM_REG(new_div);

 if (nr < 4) {
  adm1026_write_value(client, ADM1026_REG_FAN_DIV_0_3,
        (DIV_TO_REG(data->fan_div[0]) << 0) |
        (DIV_TO_REG(data->fan_div[1]) << 2) |
        (DIV_TO_REG(data->fan_div[2]) << 4) |
        (DIV_TO_REG(data->fan_div[3]) << 6));
 } else {
  adm1026_write_value(client, ADM1026_REG_FAN_DIV_4_7,
        (DIV_TO_REG(data->fan_div[4]) << 0) |
        (DIV_TO_REG(data->fan_div[5]) << 2) |
        (DIV_TO_REG(data->fan_div[6]) << 4) |
        (DIV_TO_REG(data->fan_div[7]) << 6));
 }

 if (data->fan_div[nr] != orig_div)
  fixup_fan_min(dev, nr, orig_div);

 mutex_unlock(&data->update_lock);
 return count;
}
