
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm90_data {int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int clamp_val (long,int ,int) ;
 struct lm90_data* dev_get_drvdata (struct device*) ;

 int lm90_set_convrate (struct i2c_client*,struct lm90_data*,int ) ;
 int lm90_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm90_chip_write(struct device *dev, u32 attr, int channel, long val)
{
 struct lm90_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int err;

 mutex_lock(&data->update_lock);

 err = lm90_update_device(dev);
 if (err)
  goto error;

 switch (attr) {
 case 128:
  err = lm90_set_convrate(client, data,
     clamp_val(val, 0, 100000));
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
error:
 mutex_unlock(&data->update_lock);

 return err;
}
