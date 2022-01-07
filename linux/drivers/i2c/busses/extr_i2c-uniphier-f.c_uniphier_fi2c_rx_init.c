
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uniphier_fi2c_priv {int len; int enabled_irqs; scalar_t__ membase; int flags; } ;


 scalar_t__ UNIPHIER_FI2C_DTTX ;
 int UNIPHIER_FI2C_DTTX_CMD ;
 int UNIPHIER_FI2C_DTTX_RD ;
 int UNIPHIER_FI2C_INT_RB ;
 int UNIPHIER_FI2C_INT_RF ;
 int UNIPHIER_FI2C_MANUAL_NACK ;
 scalar_t__ UNIPHIER_FI2C_RBC ;
 int UNIPHIER_FI2C_RD ;
 scalar_t__ likely (int) ;
 int uniphier_fi2c_set_irqs (struct uniphier_fi2c_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_rx_init(struct uniphier_fi2c_priv *priv, u16 addr)
{
 priv->flags |= UNIPHIER_FI2C_RD;

 if (likely(priv->len < 256)) {




  writel(priv->len, priv->membase + UNIPHIER_FI2C_RBC);
  priv->enabled_irqs |= UNIPHIER_FI2C_INT_RF |
          UNIPHIER_FI2C_INT_RB;
 } else {





  writel(0, priv->membase + UNIPHIER_FI2C_RBC);
  priv->flags |= UNIPHIER_FI2C_MANUAL_NACK;
  priv->enabled_irqs |= UNIPHIER_FI2C_INT_RF;
 }

 uniphier_fi2c_set_irqs(priv);


 writel(UNIPHIER_FI2C_DTTX_CMD | UNIPHIER_FI2C_DTTX_RD | addr << 1,
        priv->membase + UNIPHIER_FI2C_DTTX);
}
