
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct veml6070_data {int config; int lock; int client1; int client2; } ;


 int VEML6070_COMMAND_SD ;
 int i2c_smbus_read_byte (int ) ;
 int i2c_smbus_write_byte (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int veml6070_read(struct veml6070_data *data)
{
 int ret;
 u8 msb, lsb;

 mutex_lock(&data->lock);


 ret = i2c_smbus_write_byte(data->client1,
     data->config & ~VEML6070_COMMAND_SD);
 if (ret < 0)
  goto out;

 msleep(125 + 10);

 ret = i2c_smbus_read_byte(data->client2);
 if (ret < 0)
  goto out;
 msb = ret;

 ret = i2c_smbus_read_byte(data->client1);
 if (ret < 0)
  goto out;
 lsb = ret;


 ret = i2c_smbus_write_byte(data->client1, data->config);
 if (ret < 0)
  goto out;

 ret = (msb << 8) | lsb;

out:
 mutex_unlock(&data->lock);
 return ret;
}
