
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int rstc; } ;


 int ETIMEDOUT ;
 int LOOP_TIMEOUT ;
 int reset_control_reset (int ) ;
 int reset_control_status (int ) ;
 int udelay (int) ;

__attribute__((used)) static int rcar_i2c_do_reset(struct rcar_i2c_priv *priv)
{
 int i, ret;

 ret = reset_control_reset(priv->rstc);
 if (ret)
  return ret;

 for (i = 0; i < LOOP_TIMEOUT; i++) {
  ret = reset_control_status(priv->rstc);
  if (ret == 0)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
