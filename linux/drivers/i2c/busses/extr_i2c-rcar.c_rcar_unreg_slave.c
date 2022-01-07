
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int * slave; int irq; } ;
struct i2c_client {int adapter; } ;


 int ICSCR ;
 int ICSIER ;
 int WARN_ON (int) ;
 struct rcar_i2c_priv* i2c_get_adapdata (int ) ;
 int pm_runtime_put (int ) ;
 int rcar_i2c_priv_to_dev (struct rcar_i2c_priv*) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int rcar_unreg_slave(struct i2c_client *slave)
{
 struct rcar_i2c_priv *priv = i2c_get_adapdata(slave->adapter);

 WARN_ON(!priv->slave);


 rcar_i2c_write(priv, ICSIER, 0);
 rcar_i2c_write(priv, ICSCR, 0);

 synchronize_irq(priv->irq);
 priv->slave = ((void*)0);

 pm_runtime_put(rcar_i2c_priv_to_dev(priv));

 return 0;
}
