
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ad799x_state {int id; int config; int client; } ;


 int AD7998_CONF_REG ;





 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int ) ;

__attribute__((used)) static int ad799x_write_config(struct ad799x_state *st, u16 val)
{
 switch (st->id) {
 case 129:
 case 128:
  return i2c_smbus_write_word_swapped(st->client, AD7998_CONF_REG,
   val);
 case 132:
 case 131:
 case 130:
  return i2c_smbus_write_byte_data(st->client, AD7998_CONF_REG,
   val);
 default:

  st->config = val;
  return 0;
 }
}
