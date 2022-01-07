
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EIO ;
 int I2C_FUNC_I2C ;
 int component_add (int *,int *) ;
 int dev_warn (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;
 int tda998x_create (int *) ;
 int tda998x_destroy (int *) ;
 int tda998x_ops ;

__attribute__((used)) static int
tda998x_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_warn(&client->dev, "adapter does not support I2C\n");
  return -EIO;
 }

 ret = tda998x_create(&client->dev);
 if (ret)
  return ret;

 ret = component_add(&client->dev, &tda998x_ops);
 if (ret)
  tda998x_destroy(&client->dev);
 return ret;
}
