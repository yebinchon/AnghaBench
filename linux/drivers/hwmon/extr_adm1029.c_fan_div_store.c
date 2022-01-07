
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1029_data {int* fan_div; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;


 int * ADM1029_REG_FAN_DIV ;
 int EINVAL ;
 int dev_err (int *,char*,long) ;
 struct adm1029_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct adm1029_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 u8 reg;
 long val;
 int ret = kstrtol(buf, 10, &val);

 if (ret < 0)
  return ret;

 mutex_lock(&data->update_lock);


 reg = i2c_smbus_read_byte_data(client,
           ADM1029_REG_FAN_DIV[attr->index]);

 switch (val) {
 case 1:
  val = 1;
  break;
 case 2:
  val = 2;
  break;
 case 4:
  val = 3;
  break;
 default:
  mutex_unlock(&data->update_lock);
  dev_err(&client->dev,
   "fan_div value %ld not supported. Choose one of 1, 2 or 4!\n",
   val);
  return -EINVAL;
 }

 reg = (reg & 0x3F) | (val << 6);


 data->fan_div[attr->index] = reg;


 i2c_smbus_write_byte_data(client,
      ADM1029_REG_FAN_DIV[attr->index], reg);
 mutex_unlock(&data->update_lock);

 return count;
}
