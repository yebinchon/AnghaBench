
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int LM77_REG_CONF ;
 int lm77_read_value (struct i2c_client*,int ) ;
 int lm77_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm77_init_client(struct i2c_client *client)
{

 int conf = lm77_read_value(client, LM77_REG_CONF);
 if (conf & 1)
  lm77_write_value(client, LM77_REG_CONF, conf & 0xfe);
}
