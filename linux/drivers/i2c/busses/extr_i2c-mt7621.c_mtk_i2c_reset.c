
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct mtk_i2c {int clk_div; scalar_t__ base; int dev; TYPE_2__ adap; } ;


 scalar_t__ REG_SM0CFG2_REG ;
 scalar_t__ REG_SM0CTL0_REG ;
 int SM0CTL0_CLK_DIV_MASK ;
 int SM0CTL0_EN ;
 int SM0CTL0_SCL_STRETCH ;
 int dev_err (int ,char*) ;
 int device_reset (int ) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void mtk_i2c_reset(struct mtk_i2c *i2c)
{
 int ret;

 ret = device_reset(i2c->adap.dev.parent);
 if (ret)
  dev_err(i2c->dev, "I2C reset failed!\n");





 iowrite32(((i2c->clk_div << 16) & SM0CTL0_CLK_DIV_MASK) | SM0CTL0_EN |
    SM0CTL0_SCL_STRETCH, i2c->base + REG_SM0CTL0_REG);
 iowrite32(0, i2c->base + REG_SM0CFG2_REG);
}
