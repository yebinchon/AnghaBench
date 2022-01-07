
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int adp5588_read(struct i2c_client *client, u8 reg)
{
 int ret = i2c_smbus_read_byte_data(client, reg);

 if (ret < 0)
  dev_err(&client->dev, "Read Error\n");

 return ret;
}
