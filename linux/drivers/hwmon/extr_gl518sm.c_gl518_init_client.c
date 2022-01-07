
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int GL518_REG_CONF ;
 int GL518_REG_MASK ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void gl518_init_client(struct i2c_client *client)
{

 u8 regvalue = gl518_read_value(client, GL518_REG_CONF) & 0x7f;


 gl518_write_value(client, GL518_REG_CONF, (regvalue &= 0x37));


 gl518_write_value(client, GL518_REG_MASK, 0x00);


 gl518_write_value(client, GL518_REG_CONF, 0x20 | regvalue);
 gl518_write_value(client, GL518_REG_CONF, 0x40 | regvalue);
}
