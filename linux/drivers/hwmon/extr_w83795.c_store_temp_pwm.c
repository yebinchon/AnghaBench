
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83795_data {unsigned long** pwm_temp; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;




 int W83795_REG_CTFS (int) ;
 int W83795_REG_HT (int) ;
 int W83795_REG_TTTI (int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83795_read (struct i2c_client*,int ) ;
 int w83795_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_temp_pwm(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned long val;
 u8 tmp;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;
 val /= 1000;

 mutex_lock(&data->update_lock);
 switch (nr) {
 case 128:
  val = clamp_val(val, 0, 0x7f);
  w83795_write(client, W83795_REG_TTTI(index), val);
  break;
 case 131:
  val = clamp_val(val, 0, 0x7f);
  w83795_write(client, W83795_REG_CTFS(index), val);
  break;
 case 130:
  val = clamp_val(val, 0, 0x0f);
  tmp = w83795_read(client, W83795_REG_HT(index));
  tmp &= 0x0f;
  tmp |= (val << 4) & 0xf0;
  w83795_write(client, W83795_REG_HT(index), tmp);
  break;
 case 129:
  val = clamp_val(val, 0, 0x0f);
  tmp = w83795_read(client, W83795_REG_HT(index));
  tmp &= 0xf0;
  tmp |= val & 0x0f;
  w83795_write(client, W83795_REG_HT(index), tmp);
  break;
 }
 data->pwm_temp[index][nr] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
