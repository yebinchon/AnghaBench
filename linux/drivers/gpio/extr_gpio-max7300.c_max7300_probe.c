
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7301 {int * dev; int write; int read; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int __max730x_probe (struct max7301*) ;
 struct max7301* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int max7300_i2c_read ;
 int max7300_i2c_write ;

__attribute__((used)) static int max7300_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct max7301 *ts;

 if (!i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 ts = devm_kzalloc(&client->dev, sizeof(struct max7301), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->read = max7300_i2c_read;
 ts->write = max7300_i2c_write;
 ts->dev = &client->dev;

 return __max730x_probe(ts);
}
