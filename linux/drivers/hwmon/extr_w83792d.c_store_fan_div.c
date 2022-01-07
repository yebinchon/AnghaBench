
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83792d_data {int* fan_min; int* fan_div; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int) ;
 int DIV_TO_REG (unsigned long) ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int * W83792D_REG_FAN_DIV ;
 int * W83792D_REG_FAN_MIN ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_fan_div(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index - 1;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 unsigned long min;

 u8 fan_div_reg = 0;
 u8 tmp_fan_div;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;


 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan_min[nr],
      DIV_FROM_REG(data->fan_div[nr]));

 data->fan_div[nr] = DIV_TO_REG(val);

 fan_div_reg = w83792d_read_value(client, W83792D_REG_FAN_DIV[nr >> 1]);
 fan_div_reg &= (nr & 0x01) ? 0x8f : 0xf8;
 tmp_fan_div = (nr & 0x01) ? (((data->fan_div[nr]) << 4) & 0x70)
     : ((data->fan_div[nr]) & 0x07);
 w83792d_write_value(client, W83792D_REG_FAN_DIV[nr >> 1],
     fan_div_reg | tmp_fan_div);


 data->fan_min[nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 w83792d_write_value(client, W83792D_REG_FAN_MIN[nr], data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
