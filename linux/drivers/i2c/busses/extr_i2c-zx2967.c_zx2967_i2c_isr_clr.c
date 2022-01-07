
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {int dummy; } ;


 int I2C_IRQ_ACK_CLEAR ;
 int REG_STAT ;
 int zx2967_i2c_readl (struct zx2967_i2c*,int ) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int ,int ) ;

__attribute__((used)) static void zx2967_i2c_isr_clr(struct zx2967_i2c *i2c)
{
 u32 status;

 status = zx2967_i2c_readl(i2c, REG_STAT);
 status |= I2C_IRQ_ACK_CLEAR;
 zx2967_i2c_writel(i2c, status, REG_STAT);
}
