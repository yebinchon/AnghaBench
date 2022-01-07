
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {scalar_t__ membase; int enabled_irqs; } ;


 scalar_t__ UNIPHIER_FI2C_CR ;
 int UNIPHIER_FI2C_CR_MST ;
 int UNIPHIER_FI2C_CR_STO ;
 int UNIPHIER_FI2C_INT_STOP ;
 int uniphier_fi2c_set_irqs (struct uniphier_fi2c_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_stop(struct uniphier_fi2c_priv *priv)
{
 priv->enabled_irqs |= UNIPHIER_FI2C_INT_STOP;
 uniphier_fi2c_set_irqs(priv);
 writel(UNIPHIER_FI2C_CR_MST | UNIPHIER_FI2C_CR_STO,
        priv->membase + UNIPHIER_FI2C_CR);
}
