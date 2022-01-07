
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_i2c_priv {scalar_t__ regs; } ;


 scalar_t__ HIX5I2C_ICR ;
 scalar_t__ HIX5I2C_SR ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static u32 hix5hd2_i2c_clr_pend_irq(struct hix5hd2_i2c_priv *priv)
{
 u32 val = readl_relaxed(priv->regs + HIX5I2C_SR);

 writel_relaxed(val, priv->regs + HIX5I2C_ICR);

 return val;
}
