
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;


 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int i2c_check_functionality (int ,int ) ;
 int mpl115_i2c_ops ;
 int mpl115_probe (int *,int ,int *) ;

__attribute__((used)) static int mpl115_i2c_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -EOPNOTSUPP;

 return mpl115_probe(&client->dev, id->name, &mpl115_i2c_ops);
}
