
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_fi2c_priv {scalar_t__ membase; } ;


 scalar_t__ UNIPHIER_FI2C_IC ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_clear_irqs(struct uniphier_fi2c_priv *priv,
         u32 mask)
{
 writel(mask, priv->membase + UNIPHIER_FI2C_IC);
}
