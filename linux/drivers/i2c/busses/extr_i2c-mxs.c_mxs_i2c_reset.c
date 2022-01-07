
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_i2c_dev {int timing0; int timing1; int timing2; scalar_t__ regs; } ;


 scalar_t__ MXS_I2C_CTRL1_SET ;
 int MXS_I2C_IRQ_MASK ;
 scalar_t__ MXS_I2C_TIMING0 ;
 scalar_t__ MXS_I2C_TIMING1 ;
 scalar_t__ MXS_I2C_TIMING2 ;
 int stmp_reset_block (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_i2c_reset(struct mxs_i2c_dev *i2c)
{
 int ret = stmp_reset_block(i2c->regs);
 if (ret)
  return ret;
 writel(i2c->timing0, i2c->regs + MXS_I2C_TIMING0);
 writel(i2c->timing1, i2c->regs + MXS_I2C_TIMING1);
 writel(i2c->timing2, i2c->regs + MXS_I2C_TIMING2);

 writel(MXS_I2C_IRQ_MASK << 8, i2c->regs + MXS_I2C_CTRL1_SET);

 return 0;
}
