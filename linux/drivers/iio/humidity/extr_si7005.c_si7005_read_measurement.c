
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si7005_data {int config; int lock; int client; } ;


 int EIO ;
 int SI7005_CONFIG ;
 int SI7005_CONFIG_START ;
 int SI7005_CONFIG_TEMP ;
 int SI7005_DATA ;
 int SI7005_STATUS ;
 int SI7005_STATUS_NRDY ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int si7005_read_measurement(struct si7005_data *data, bool temp)
{
 int tries = 50;
 int ret;

 mutex_lock(&data->lock);

 ret = i2c_smbus_write_byte_data(data->client, SI7005_CONFIG,
  data->config | SI7005_CONFIG_START |
  (temp ? SI7005_CONFIG_TEMP : 0));
 if (ret < 0)
  goto done;

 while (tries-- > 0) {
  msleep(20);
  ret = i2c_smbus_read_byte_data(data->client, SI7005_STATUS);
  if (ret < 0)
   goto done;
  if (!(ret & SI7005_STATUS_NRDY))
   break;
 }
 if (tries < 0) {
  ret = -EIO;
  goto done;
 }

 ret = i2c_smbus_read_word_swapped(data->client, SI7005_DATA);

done:
 mutex_unlock(&data->lock);

 return ret;
}
