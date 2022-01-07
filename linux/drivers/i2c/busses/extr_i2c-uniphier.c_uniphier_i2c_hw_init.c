
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_i2c_priv {unsigned int clk_cycle; scalar_t__ membase; } ;


 scalar_t__ UNIPHIER_I2C_CLK ;
 int uniphier_i2c_reset (struct uniphier_i2c_priv*,int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void uniphier_i2c_hw_init(struct uniphier_i2c_priv *priv)
{
 unsigned int cyc = priv->clk_cycle;

 uniphier_i2c_reset(priv, 1);







 writel((cyc * 5 / 9 << 16) | cyc, priv->membase + UNIPHIER_I2C_CLK);

 uniphier_i2c_reset(priv, 0);
}
