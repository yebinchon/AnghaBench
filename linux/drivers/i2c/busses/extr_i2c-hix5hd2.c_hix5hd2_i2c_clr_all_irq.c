
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hix5hd2_i2c_priv {scalar_t__ regs; } ;


 scalar_t__ HIX5I2C_ICR ;
 int I2C_CLEAR_ALL ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void hix5hd2_i2c_clr_all_irq(struct hix5hd2_i2c_priv *priv)
{
 writel_relaxed(I2C_CLEAR_ALL, priv->regs + HIX5I2C_ICR);
}
