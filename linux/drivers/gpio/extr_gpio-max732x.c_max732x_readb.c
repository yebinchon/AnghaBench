
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct max732x_chip {struct i2c_client* client_group_b; struct i2c_client* client_group_a; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;

__attribute__((used)) static int max732x_readb(struct max732x_chip *chip, int group_a, uint8_t *val)
{
 struct i2c_client *client;
 int ret;

 client = group_a ? chip->client_group_a : chip->client_group_b;
 ret = i2c_smbus_read_byte(client);
 if (ret < 0) {
  dev_err(&client->dev, "failed reading\n");
  return ret;
 }

 *val = (uint8_t)ret;
 return 0;
}
