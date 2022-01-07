
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht3x_data {int i2c_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SHT3X_CMD_LENGTH ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int i2c_master_send (struct i2c_client*,char*,int ) ;
 int kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sht3x_cmd_heater_off ;
 int sht3x_cmd_heater_on ;

__attribute__((used)) static ssize_t heater_enable_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t count)
{
 struct sht3x_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;
 bool status;

 ret = kstrtobool(buf, &status);
 if (ret)
  return ret;

 mutex_lock(&data->i2c_lock);

 if (status)
  ret = i2c_master_send(client, (char *)&sht3x_cmd_heater_on,
          SHT3X_CMD_LENGTH);
 else
  ret = i2c_master_send(client, (char *)&sht3x_cmd_heater_off,
          SHT3X_CMD_LENGTH);

 mutex_unlock(&data->i2c_lock);

 return ret;
}
