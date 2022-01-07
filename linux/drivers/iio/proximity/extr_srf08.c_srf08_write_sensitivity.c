
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct srf08_data {unsigned int sensitivity; int lock; TYPE_1__* chip_info; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_sensitivity_avail; unsigned int* sensitivity_avail; } ;


 int EINVAL ;
 int SRF08_WRITE_MAX_GAIN ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t srf08_write_sensitivity(struct srf08_data *data,
       unsigned int val)
{
 struct i2c_client *client = data->client;
 int ret, i;
 u8 regval;

 if (!val)
  return -EINVAL;

 for (i = 0; i < data->chip_info->num_sensitivity_avail; i++)
  if (val && (val == data->chip_info->sensitivity_avail[i])) {
   regval = i;
   break;
  }

 if (i >= data->chip_info->num_sensitivity_avail)
  return -EINVAL;

 mutex_lock(&data->lock);

 ret = i2c_smbus_write_byte_data(client, SRF08_WRITE_MAX_GAIN, regval);
 if (ret < 0) {
  dev_err(&client->dev, "write_sensitivity - err: %d\n", ret);
  mutex_unlock(&data->lock);
  return ret;
 }

 data->sensitivity = val;

 mutex_unlock(&data->lock);

 return 0;
}
