
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_i2c {scalar_t__ base; } ;
struct i2c_msg {int addr; } ;


 scalar_t__ I2C_ADDR_CFG ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_set_devaddr(struct sprd_i2c *i2c_dev, struct i2c_msg *m)
{
 writel(m->addr << 1, i2c_dev->base + I2C_ADDR_CFG);
}
