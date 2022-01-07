
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {scalar_t__ regs; } ;


 scalar_t__ HIX5I2C_CTRL ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_i2c_disable_irq(struct hix5hd2_i2c_priv *priv)
{
 writel_relaxed(0, priv->regs + HIX5I2C_CTRL);
}
