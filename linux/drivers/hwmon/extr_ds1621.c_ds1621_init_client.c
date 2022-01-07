
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i2c_client {int dummy; } ;
struct ds1621_data {int kind; int zbits; int update_interval; } ;


 size_t DS1621_COM_START ;
 int DS1621_CONVERSION_MAX ;
 int DS1621_REG_CONF ;
 size_t DS1621_REG_CONFIG_1SHOT ;
 size_t DS1621_REG_CONFIG_POLARITY ;
 size_t DS1621_REG_CONFIG_RESOL ;
 size_t DS1621_REG_CONFIG_RESOL_SHIFT ;
 int DS1625_CONVERSION_MAX ;
 size_t DS1721_COM_START ;



 int * ds1721_convrates ;

 size_t i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,size_t) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,size_t) ;
 int polarity ;

__attribute__((used)) static void ds1621_init_client(struct ds1621_data *data,
          struct i2c_client *client)
{
 u8 conf, new_conf, sreg, resol;

 new_conf = conf = i2c_smbus_read_byte_data(client, DS1621_REG_CONF);

 new_conf &= ~DS1621_REG_CONFIG_1SHOT;


 if (polarity == 0)
  new_conf &= ~DS1621_REG_CONFIG_POLARITY;
 else if (polarity == 1)
  new_conf |= DS1621_REG_CONFIG_POLARITY;

 if (conf != new_conf)
  i2c_smbus_write_byte_data(client, DS1621_REG_CONF, new_conf);

 switch (data->kind) {
 case 131:
  data->update_interval = DS1625_CONVERSION_MAX;
  data->zbits = 7;
  sreg = DS1621_COM_START;
  break;
 case 130:
 case 129:
 case 128:
  resol = (new_conf & DS1621_REG_CONFIG_RESOL) >>
    DS1621_REG_CONFIG_RESOL_SHIFT;
  data->update_interval = ds1721_convrates[resol];
  data->zbits = 7 - resol;
  sreg = DS1721_COM_START;
  break;
 default:
  data->update_interval = DS1621_CONVERSION_MAX;
  data->zbits = 7;
  sreg = DS1621_COM_START;
  break;
 }


 i2c_smbus_write_byte(client, sreg);
}
