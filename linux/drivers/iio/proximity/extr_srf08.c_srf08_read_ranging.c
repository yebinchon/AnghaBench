
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srf08_data {int range_mm; int lock; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int SRF08_CMD_RANGING_CM ;
 int SRF08_READ_ECHO_1_HIGH ;
 int SRF08_READ_SW_REVISION ;
 int SRF08_WRITE_COMMAND ;
 int dev_err (int *,char*,...) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int srf08_read_ranging(struct srf08_data *data)
{
 struct i2c_client *client = data->client;
 int ret, i;
 int waittime;

 mutex_lock(&data->lock);

 ret = i2c_smbus_write_byte_data(data->client,
   SRF08_WRITE_COMMAND, SRF08_CMD_RANGING_CM);
 if (ret < 0) {
  dev_err(&client->dev, "write command - err: %d\n", ret);
  mutex_unlock(&data->lock);
  return ret;
 }
 waittime = 1 + data->range_mm / 172;
 msleep(waittime);
 for (i = 0; i < 4; i++) {
  ret = i2c_smbus_read_byte_data(data->client,
      SRF08_READ_SW_REVISION);


  if (ret < 255 && ret > 0)
   break;
  msleep(5);
 }

 if (ret >= 255 || ret <= 0) {
  dev_err(&client->dev, "device not ready\n");
  mutex_unlock(&data->lock);
  return -EIO;
 }

 ret = i2c_smbus_read_word_swapped(data->client,
      SRF08_READ_ECHO_1_HIGH);
 if (ret < 0) {
  dev_err(&client->dev, "cannot read distance: ret=%d\n", ret);
  mutex_unlock(&data->lock);
  return ret;
 }

 mutex_unlock(&data->lock);

 return ret;
}
