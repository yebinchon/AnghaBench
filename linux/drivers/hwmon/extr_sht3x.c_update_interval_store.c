
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ high_precision; } ;
struct sht3x_data {int mode; int data_lock; int i2c_lock; TYPE_1__ setup; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int SHT3X_CMD_LENGTH ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int get_mode_from_update_interval (int ) ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;
 int kstrtou16 (char const*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char** periodic_measure_commands_hpm ;
 char** periodic_measure_commands_lpm ;
 char const* sht3x_cmd_break ;
 int sht3x_select_command (struct sht3x_data*) ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t count)
{
 u16 update_interval;
 u8 mode;
 int ret;
 const char *command;
 struct sht3x_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 ret = kstrtou16(buf, 0, &update_interval);
 if (ret)
  return ret;

 mode = get_mode_from_update_interval(update_interval);

 mutex_lock(&data->data_lock);

 if (mode == data->mode) {
  mutex_unlock(&data->data_lock);
  return count;
 }

 mutex_lock(&data->i2c_lock);






 if (data->mode > 0) {
  ret = i2c_master_send(client, sht3x_cmd_break,
          SHT3X_CMD_LENGTH);
  if (ret != SHT3X_CMD_LENGTH)
   goto out;
  data->mode = 0;
 }

 if (mode > 0) {
  if (data->setup.high_precision)
   command = periodic_measure_commands_hpm[mode - 1];
  else
   command = periodic_measure_commands_lpm[mode - 1];


  ret = i2c_master_send(client, command, SHT3X_CMD_LENGTH);
  if (ret != SHT3X_CMD_LENGTH)
   goto out;
 }


 data->mode = mode;
 sht3x_select_command(data);

out:
 mutex_unlock(&data->i2c_lock);
 mutex_unlock(&data->data_lock);
 if (ret != SHT3X_CMD_LENGTH)
  return ret < 0 ? ret : -EIO;

 return count;
}
