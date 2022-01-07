
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uniphier_fi2c_priv {unsigned int clk_cycle; scalar_t__ membase; } ;


 scalar_t__ UNIPHIER_FI2C_CR ;
 unsigned int UNIPHIER_FI2C_CR_MST ;
 scalar_t__ UNIPHIER_FI2C_CYC ;
 scalar_t__ UNIPHIER_FI2C_DSUT ;
 scalar_t__ UNIPHIER_FI2C_LCTL ;
 scalar_t__ UNIPHIER_FI2C_SSUT ;
 unsigned int readl (scalar_t__) ;
 int uniphier_fi2c_prepare_operation (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_reset (struct uniphier_fi2c_priv*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_hw_init(struct uniphier_fi2c_priv *priv)
{
 unsigned int cyc = priv->clk_cycle;
 u32 tmp;

 tmp = readl(priv->membase + UNIPHIER_FI2C_CR);
 tmp |= UNIPHIER_FI2C_CR_MST;
 writel(tmp, priv->membase + UNIPHIER_FI2C_CR);

 uniphier_fi2c_reset(priv);





 writel(cyc, priv->membase + UNIPHIER_FI2C_CYC);





 writel(cyc * 5 / 9, priv->membase + UNIPHIER_FI2C_LCTL);




 writel(cyc / 2, priv->membase + UNIPHIER_FI2C_SSUT);




 writel(cyc / 16, priv->membase + UNIPHIER_FI2C_DSUT);

 uniphier_fi2c_prepare_operation(priv);
}
