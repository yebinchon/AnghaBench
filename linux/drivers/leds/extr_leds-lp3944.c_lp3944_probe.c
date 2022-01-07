
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3944_platform_data {int dummy; } ;
struct lp3944_data {int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int dev_err (int *,char*) ;
 struct lp3944_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 struct lp3944_data* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp3944_data*) ;
 int lp3944_configure (struct i2c_client*,struct lp3944_data*,struct lp3944_platform_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lp3944_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct lp3944_platform_data *lp3944_pdata =
   dev_get_platdata(&client->dev);
 struct lp3944_data *data;
 int err;

 if (lp3944_pdata == ((void*)0)) {
  dev_err(&client->dev, "no platform data\n");
  return -EINVAL;
 }


 if (!i2c_check_functionality(client->adapter,
    I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&client->dev, "insufficient functionality!\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&client->dev, sizeof(struct lp3944_data),
   GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 i2c_set_clientdata(client, data);

 mutex_init(&data->lock);

 err = lp3944_configure(client, data, lp3944_pdata);
 if (err < 0)
  return err;

 dev_info(&client->dev, "lp3944 enabled\n");
 return 0;
}
