
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {scalar_t__ devtype; int icccr; } ;


 scalar_t__ I2C_RCAR_GEN3 ;
 int ICCCR ;
 int ICFBSCR ;
 int ICMCR ;
 int ICMIER ;
 int ICMSR ;
 int MDBS ;
 int TCYC17 ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;

__attribute__((used)) static void rcar_i2c_init(struct rcar_i2c_priv *priv)
{

 rcar_i2c_write(priv, ICMIER, 0);
 rcar_i2c_write(priv, ICMCR, MDBS);
 rcar_i2c_write(priv, ICMSR, 0);

 rcar_i2c_write(priv, ICCCR, priv->icccr);

 if (priv->devtype == I2C_RCAR_GEN3)
  rcar_i2c_write(priv, ICFBSCR, TCYC17);

}
