
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int recovery_icmcr; int adap; } ;


 int FSCL ;
 int FSDA ;
 int ICMCR ;
 int LOOP_TIMEOUT ;
 int MDBS ;
 int OBPC ;
 int i2c_recover_bus (int *) ;
 int rcar_i2c_read (struct rcar_i2c_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int rcar_i2c_bus_barrier(struct rcar_i2c_priv *priv)
{
 int i;

 for (i = 0; i < LOOP_TIMEOUT; i++) {

  if (!(rcar_i2c_read(priv, ICMCR) & FSDA))
   return 0;
  udelay(1);
 }


 priv->recovery_icmcr = MDBS | OBPC | FSDA | FSCL;
 return i2c_recover_bus(&priv->adap);
}
