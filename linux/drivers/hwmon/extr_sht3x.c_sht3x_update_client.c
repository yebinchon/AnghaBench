
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sht3x_data {size_t mode; int data_lock; scalar_t__ last_update; int humidity; int temperature; int wait_time; int command; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;
typedef int __be16 ;


 struct sht3x_data* ERR_PTR (int) ;
 int SHT3X_RESPONSE_LENGTH ;
 int be16_to_cpup (int *) ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int * mode_to_update_interval ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sht3x_extract_humidity (int ) ;
 int sht3x_extract_temperature (int ) ;
 int sht3x_read_from_command (struct i2c_client*,struct sht3x_data*,int ,unsigned char*,int,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct sht3x_data *sht3x_update_client(struct device *dev)
{
 struct sht3x_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u16 interval_ms = mode_to_update_interval[data->mode];
 unsigned long interval_jiffies = msecs_to_jiffies(interval_ms);
 unsigned char buf[SHT3X_RESPONSE_LENGTH];
 u16 val;
 int ret = 0;

 mutex_lock(&data->data_lock);
 if (time_after(jiffies, data->last_update + interval_jiffies)) {
  ret = sht3x_read_from_command(client, data, data->command, buf,
           sizeof(buf), data->wait_time);
  if (ret)
   goto out;

  val = be16_to_cpup((__be16 *)buf);
  data->temperature = sht3x_extract_temperature(val);
  val = be16_to_cpup((__be16 *)(buf + 3));
  data->humidity = sht3x_extract_humidity(val);
  data->last_update = jiffies;
 }

out:
 mutex_unlock(&data->data_lock);
 if (ret)
  return ERR_PTR(ret);

 return data;
}
