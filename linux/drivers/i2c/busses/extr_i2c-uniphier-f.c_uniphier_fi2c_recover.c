
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {int adap; } ;


 int i2c_recover_bus (int *) ;
 int uniphier_fi2c_reset (struct uniphier_fi2c_priv*) ;

__attribute__((used)) static void uniphier_fi2c_recover(struct uniphier_fi2c_priv *priv)
{
 uniphier_fi2c_reset(priv);
 i2c_recover_bus(&priv->adap);
}
