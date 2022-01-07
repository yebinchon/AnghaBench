
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad799x_state {int id; int config; int client; } ;


 int AD7998_CONF_REG ;





 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;

__attribute__((used)) static int ad799x_read_config(struct ad799x_state *st)
{
 switch (st->id) {
 case 129:
 case 128:
  return i2c_smbus_read_word_swapped(st->client, AD7998_CONF_REG);
 case 132:
 case 131:
 case 130:
  return i2c_smbus_read_byte_data(st->client, AD7998_CONF_REG);
 default:

  return st->config;
 }
}
