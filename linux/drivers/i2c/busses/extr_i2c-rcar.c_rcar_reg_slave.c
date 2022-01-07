
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {struct i2c_client* slave; } ;
struct i2c_client {int flags; int addr; int adapter; } ;


 int EAFNOSUPPORT ;
 int EBUSY ;
 int I2C_CLIENT_TEN ;
 int ICSAR ;
 int ICSCR ;
 int ICSIER ;
 int ICSSR ;
 int SAR ;
 int SDBS ;
 int SIE ;
 int SSR ;
 struct rcar_i2c_priv* i2c_get_adapdata (int ) ;
 int pm_runtime_get_sync (int ) ;
 int rcar_i2c_priv_to_dev (struct rcar_i2c_priv*) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int) ;

__attribute__((used)) static int rcar_reg_slave(struct i2c_client *slave)
{
 struct rcar_i2c_priv *priv = i2c_get_adapdata(slave->adapter);

 if (priv->slave)
  return -EBUSY;

 if (slave->flags & I2C_CLIENT_TEN)
  return -EAFNOSUPPORT;


 pm_runtime_get_sync(rcar_i2c_priv_to_dev(priv));

 priv->slave = slave;
 rcar_i2c_write(priv, ICSAR, slave->addr);
 rcar_i2c_write(priv, ICSSR, 0);
 rcar_i2c_write(priv, ICSIER, SAR | SSR);
 rcar_i2c_write(priv, ICSCR, SIE | SDBS);

 return 0;
}
