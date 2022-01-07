
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dev; } ;
struct ds620_platform_data {int pomode; } ;


 int DS620_COM_START ;
 int DS620_REG_CONF ;
 int DS620_REG_CONFIG_1SHOT ;
 int DS620_REG_CONFIG_PO1 ;
 int DS620_REG_CONFIG_PO2 ;
 int DS620_REG_CONFIG_R0 ;
 int DS620_REG_CONFIG_R1 ;
 struct ds620_platform_data* dev_get_platdata (int *) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;

__attribute__((used)) static void ds620_init_client(struct i2c_client *client)
{
 struct ds620_platform_data *ds620_info = dev_get_platdata(&client->dev);
 u16 conf, new_conf;

 new_conf = conf =
     i2c_smbus_read_word_swapped(client, DS620_REG_CONF);


 new_conf &= ~DS620_REG_CONFIG_1SHOT;

 new_conf |= DS620_REG_CONFIG_PO2;

 if (ds620_info && ds620_info->pomode == 1)
  new_conf &= ~DS620_REG_CONFIG_PO1;
 else if (ds620_info && ds620_info->pomode == 2)
  new_conf |= DS620_REG_CONFIG_PO1;
 else
  new_conf &= ~DS620_REG_CONFIG_PO2;

 new_conf |= DS620_REG_CONFIG_R1 | DS620_REG_CONFIG_R0;

 if (conf != new_conf)
  i2c_smbus_write_word_swapped(client, DS620_REG_CONF, new_conf);


 i2c_smbus_write_byte(client, DS620_COM_START);
}
