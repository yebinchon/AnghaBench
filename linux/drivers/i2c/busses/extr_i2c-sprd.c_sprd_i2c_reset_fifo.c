
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_i2c {scalar_t__ base; } ;


 scalar_t__ ADDR_RST ;
 int I2C_RST ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_reset_fifo(struct sprd_i2c *i2c_dev)
{
 writel(I2C_RST, i2c_dev->base + ADDR_RST);
}
