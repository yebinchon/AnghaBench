
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_i2c_dev {scalar_t__ base; } ;


 int OWL_I2C_CTL_EN ;
 scalar_t__ OWL_I2C_REG_CTL ;
 scalar_t__ OWL_I2C_REG_STAT ;
 int mdelay (int) ;
 int owl_i2c_update_reg (scalar_t__,int ,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void owl_i2c_reset(struct owl_i2c_dev *i2c_dev)
{
 owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_CTL,
      OWL_I2C_CTL_EN, 0);
 mdelay(1);
 owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_CTL,
      OWL_I2C_CTL_EN, 1);


 writel(0, i2c_dev->base + OWL_I2C_REG_STAT);
}
