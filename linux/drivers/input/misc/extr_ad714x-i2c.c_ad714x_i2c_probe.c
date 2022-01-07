
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct ad714x_chip {int dummy; } ;


 int BUS_I2C ;
 scalar_t__ IS_ERR (struct ad714x_chip*) ;
 int PTR_ERR (struct ad714x_chip*) ;
 int ad714x_i2c_read ;
 int ad714x_i2c_write ;
 struct ad714x_chip* ad714x_probe (int *,int ,int ,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ad714x_chip*) ;

__attribute__((used)) static int ad714x_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct ad714x_chip *chip;

 chip = ad714x_probe(&client->dev, BUS_I2C, client->irq,
       ad714x_i2c_read, ad714x_i2c_write);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 i2c_set_clientdata(client, chip);

 return 0;
}
