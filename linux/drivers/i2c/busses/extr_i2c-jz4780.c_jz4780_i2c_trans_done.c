
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_i2c {int trans_waitq; } ;


 int JZ4780_I2C_INTM ;
 int complete (int *) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,int ) ;

__attribute__((used)) static void jz4780_i2c_trans_done(struct jz4780_i2c *i2c)
{
 jz4780_i2c_writew(i2c, JZ4780_I2C_INTM, 0);
 complete(&i2c->trans_waitq);
}
