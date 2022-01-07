
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {scalar_t__ msg_rd; } ;


 int I2C_CMB_RW_EN ;
 int I2C_IRQ_ACK_CLEAR ;
 int I2C_RW_READ ;
 int I2C_START ;
 int REG_CMD ;
 int REG_STAT ;
 int zx2967_i2c_readl (struct zx2967_i2c*,int ) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int ,int ) ;

__attribute__((used)) static void zx2967_i2c_start_ctrl(struct zx2967_i2c *i2c)
{
 u32 status;
 u32 ctl;

 status = zx2967_i2c_readl(i2c, REG_STAT);
 status |= I2C_IRQ_ACK_CLEAR;
 zx2967_i2c_writel(i2c, status, REG_STAT);

 ctl = zx2967_i2c_readl(i2c, REG_CMD);
 if (i2c->msg_rd)
  ctl |= I2C_RW_READ;
 else
  ctl &= ~I2C_RW_READ;
 ctl &= ~I2C_CMB_RW_EN;
 ctl |= I2C_START;
 zx2967_i2c_writel(i2c, ctl, REG_CMD);
}
