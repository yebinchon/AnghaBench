
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct srf08_data {unsigned int range_mm; int lock; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int SRF08_WRITE_RANGE ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t srf08_write_range_mm(struct srf08_data *data, unsigned int val)
{
 int ret;
 struct i2c_client *client = data->client;
 unsigned int mod;
 u8 regval;

 ret = val / 43 - 1;
 mod = val % 43;

 if (mod || (ret < 0) || (ret > 255))
  return -EINVAL;

 regval = ret;

 mutex_lock(&data->lock);

 ret = i2c_smbus_write_byte_data(client, SRF08_WRITE_RANGE, regval);
 if (ret < 0) {
  dev_err(&client->dev, "write_range - err: %d\n", ret);
  mutex_unlock(&data->lock);
  return ret;
 }

 data->range_mm = val;

 mutex_unlock(&data->lock);

 return 0;
}
