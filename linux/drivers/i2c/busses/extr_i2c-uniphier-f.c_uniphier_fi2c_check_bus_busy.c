
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {scalar_t__ busy_cnt; scalar_t__ membase; } ;
struct i2c_adapter {int dummy; } ;


 int EAGAIN ;
 scalar_t__ UNIPHIER_FI2C_SR ;
 int UNIPHIER_FI2C_SR_DB ;
 struct uniphier_fi2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl (scalar_t__) ;
 int uniphier_fi2c_recover (struct uniphier_fi2c_priv*) ;

__attribute__((used)) static int uniphier_fi2c_check_bus_busy(struct i2c_adapter *adap)
{
 struct uniphier_fi2c_priv *priv = i2c_get_adapdata(adap);

 if (readl(priv->membase + UNIPHIER_FI2C_SR) & UNIPHIER_FI2C_SR_DB) {
  if (priv->busy_cnt++ > 3) {




   uniphier_fi2c_recover(priv);
   priv->busy_cnt = 0;
  }

  return -EAGAIN;
 }

 priv->busy_cnt = 0;
 return 0;
}
