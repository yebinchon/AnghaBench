
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int recovery_icmcr; } ;
struct i2c_adapter {int dummy; } ;


 int FSCL ;
 int ICMCR ;
 struct rcar_i2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;

__attribute__((used)) static void rcar_i2c_set_scl(struct i2c_adapter *adap, int val)
{
 struct rcar_i2c_priv *priv = i2c_get_adapdata(adap);

 if (val)
  priv->recovery_icmcr |= FSCL;
 else
  priv->recovery_icmcr &= ~FSCL;

 rcar_i2c_write(priv, ICMCR, priv->recovery_icmcr);
}
