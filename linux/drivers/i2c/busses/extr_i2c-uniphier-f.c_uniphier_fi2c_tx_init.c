
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uniphier_fi2c_priv {scalar_t__ membase; int enabled_irqs; } ;


 scalar_t__ UNIPHIER_FI2C_DTTX ;
 int UNIPHIER_FI2C_DTTX_CMD ;
 int UNIPHIER_FI2C_INT_TE ;
 scalar_t__ UNIPHIER_FI2C_TBC ;
 int uniphier_fi2c_fill_txfifo (struct uniphier_fi2c_priv*,int) ;
 int uniphier_fi2c_set_irqs (struct uniphier_fi2c_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_tx_init(struct uniphier_fi2c_priv *priv, u16 addr,
      bool repeat)
{
 priv->enabled_irqs |= UNIPHIER_FI2C_INT_TE;
 uniphier_fi2c_set_irqs(priv);


 writel(0, priv->membase + UNIPHIER_FI2C_TBC);

 writel(UNIPHIER_FI2C_DTTX_CMD | addr << 1,
        priv->membase + UNIPHIER_FI2C_DTTX);




 if (!repeat)
  uniphier_fi2c_fill_txfifo(priv, 1);
}
