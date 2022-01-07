
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_i2c {int dummy; } ;


 int JZ4780_I2C_DC ;
 int JZ4780_I2C_DC_READ ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,int ) ;

__attribute__((used)) static void jz4780_i2c_send_rcmd(struct jz4780_i2c *i2c, int cmd_count)
{
 int i;

 for (i = 0; i < cmd_count; i++)
  jz4780_i2c_writew(i2c, JZ4780_I2C_DC, JZ4780_I2C_DC_READ);
}
