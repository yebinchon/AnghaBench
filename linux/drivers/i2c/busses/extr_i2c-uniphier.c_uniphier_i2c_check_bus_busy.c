
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_i2c_priv {scalar_t__ busy_cnt; scalar_t__ membase; } ;
struct i2c_adapter {int dummy; } ;


 int EAGAIN ;
 scalar_t__ UNIPHIER_I2C_DREC ;
 int UNIPHIER_I2C_DREC_BBN ;
 struct uniphier_i2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_recover_bus (struct i2c_adapter*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int uniphier_i2c_check_bus_busy(struct i2c_adapter *adap)
{
 struct uniphier_i2c_priv *priv = i2c_get_adapdata(adap);

 if (!(readl(priv->membase + UNIPHIER_I2C_DREC) &
      UNIPHIER_I2C_DREC_BBN)) {
  if (priv->busy_cnt++ > 3) {




   i2c_recover_bus(adap);
   priv->busy_cnt = 0;
  }

  return -EAGAIN;
 }

 priv->busy_cnt = 0;
 return 0;
}
