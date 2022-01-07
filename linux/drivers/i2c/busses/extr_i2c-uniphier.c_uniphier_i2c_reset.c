
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_i2c_priv {scalar_t__ membase; } ;


 scalar_t__ UNIPHIER_I2C_BRST ;
 int UNIPHIER_I2C_BRST_FOEN ;
 int UNIPHIER_I2C_BRST_RSCL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_i2c_reset(struct uniphier_i2c_priv *priv, bool reset_on)
{
 u32 val = UNIPHIER_I2C_BRST_RSCL;

 val |= reset_on ? 0 : UNIPHIER_I2C_BRST_FOEN;
 writel(val, priv->membase + UNIPHIER_I2C_BRST);
}
