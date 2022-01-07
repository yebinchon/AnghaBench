
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int flags; int msgs_left; int msg; } ;


 int ID_P_MASK ;
 int rcar_i2c_prepare_msg (struct rcar_i2c_priv*) ;

__attribute__((used)) static void rcar_i2c_next_msg(struct rcar_i2c_priv *priv)
{
 priv->msg++;
 priv->msgs_left--;
 priv->flags &= ID_P_MASK;
 rcar_i2c_prepare_msg(priv);
}
