
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct ad7418_data {scalar_t__ type; } ;


 int AD7418_REG_CONF ;
 int AD7418_REG_CONF2 ;
 scalar_t__ ad7417 ;
 scalar_t__ ad7418 ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct ad7418_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void ad7418_init_client(struct i2c_client *client)
{
 struct ad7418_data *data = i2c_get_clientdata(client);

 int reg = i2c_smbus_read_byte_data(client, AD7418_REG_CONF);
 if (reg < 0) {
  dev_err(&client->dev, "cannot read configuration register\n");
 } else {
  dev_info(&client->dev, "configuring for mode 1\n");
  i2c_smbus_write_byte_data(client, AD7418_REG_CONF, reg & 0xfe);

  if (data->type == ad7417 || data->type == ad7418)
   i2c_smbus_write_byte_data(client,
      AD7418_REG_CONF2, 0x00);
 }
}
