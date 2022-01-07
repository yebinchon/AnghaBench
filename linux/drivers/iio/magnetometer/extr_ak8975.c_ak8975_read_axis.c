
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ak_def {int range; int * data_regs; } ;
struct ak8975_data {int lock; struct i2c_client* client; struct ak_def* def; } ;
typedef int rval ;
typedef int __le16 ;


 int IIO_VAL_INT ;
 int ak8975_start_read_axis (struct ak8975_data*,struct i2c_client const*) ;
 int clamp_t (int ,int ,int ,int ) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_i2c_block_data_or_emulated (struct i2c_client const*,int ,int,int *) ;
 struct ak8975_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int s16 ;

__attribute__((used)) static int ak8975_read_axis(struct iio_dev *indio_dev, int index, int *val)
{
 struct ak8975_data *data = iio_priv(indio_dev);
 const struct i2c_client *client = data->client;
 const struct ak_def *def = data->def;
 __le16 rval;
 u16 buff;
 int ret;

 pm_runtime_get_sync(&data->client->dev);

 mutex_lock(&data->lock);

 ret = ak8975_start_read_axis(data, client);
 if (ret)
  goto exit;

 ret = i2c_smbus_read_i2c_block_data_or_emulated(
   client, def->data_regs[index],
   sizeof(rval), (u8*)&rval);
 if (ret < 0)
  goto exit;

 mutex_unlock(&data->lock);

 pm_runtime_mark_last_busy(&data->client->dev);
 pm_runtime_put_autosuspend(&data->client->dev);


 buff = le16_to_cpu(rval);
 *val = clamp_t(s16, buff, -def->range, def->range);
 return IIO_VAL_INT;

exit:
 mutex_unlock(&data->lock);
 dev_err(&client->dev, "Error in reading axis\n");
 return ret;
}
