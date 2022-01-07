
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int FSCL ;
 int ICMCR ;
 struct rcar_i2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int rcar_i2c_read (struct rcar_i2c_priv*,int ) ;

__attribute__((used)) static int rcar_i2c_get_scl(struct i2c_adapter *adap)
{
 struct rcar_i2c_priv *priv = i2c_get_adapdata(adap);

 return !!(rcar_i2c_read(priv, ICMCR) & FSCL);

}
