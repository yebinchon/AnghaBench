
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {scalar_t__ membase; int enabled_irqs; } ;


 scalar_t__ UNIPHIER_FI2C_IE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_set_irqs(struct uniphier_fi2c_priv *priv)
{
 writel(priv->enabled_irqs, priv->membase + UNIPHIER_FI2C_IE);
}
