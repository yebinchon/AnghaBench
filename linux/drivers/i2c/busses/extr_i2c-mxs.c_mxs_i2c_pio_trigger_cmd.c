
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_i2c_dev {scalar_t__ regs; } ;


 scalar_t__ MXS_I2C_CTRL0 ;
 int MXS_I2C_CTRL0_RUN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_i2c_pio_trigger_cmd(struct mxs_i2c_dev *i2c, u32 cmd)
{
 u32 reg;

 writel(cmd, i2c->regs + MXS_I2C_CTRL0);


 reg = readl(i2c->regs + MXS_I2C_CTRL0);
 reg |= MXS_I2C_CTRL0_RUN;
 writel(reg, i2c->regs + MXS_I2C_CTRL0);
}
