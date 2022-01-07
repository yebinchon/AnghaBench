
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_i2c_priv {int msgs_left; int flags; int msg; scalar_t__ pos; } ;


 int ICMAR ;
 int ICMCR ;
 int ICMIER ;
 int ICMSR ;
 int ID_FIRST_MSG ;
 int ID_LAST_MSG ;
 int ID_P_REP_AFTER_RD ;
 int RCAR_BUS_PHASE_START ;
 int RCAR_IRQ_RECV ;
 int RCAR_IRQ_SEND ;
 int i2c_8bit_addr_from_msg (int ) ;
 int rcar_i2c_is_recv (struct rcar_i2c_priv*) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;

__attribute__((used)) static void rcar_i2c_prepare_msg(struct rcar_i2c_priv *priv)
{
 int read = !!rcar_i2c_is_recv(priv);

 priv->pos = 0;
 if (priv->msgs_left == 1)
  priv->flags |= ID_LAST_MSG;

 rcar_i2c_write(priv, ICMAR, i2c_8bit_addr_from_msg(priv->msg));





 if (priv->flags & ID_FIRST_MSG) {
  rcar_i2c_write(priv, ICMSR, 0);
  rcar_i2c_write(priv, ICMCR, RCAR_BUS_PHASE_START);
 } else {
  if (priv->flags & ID_P_REP_AFTER_RD)
   priv->flags &= ~ID_P_REP_AFTER_RD;
  else
   rcar_i2c_write(priv, ICMCR, RCAR_BUS_PHASE_START);
  rcar_i2c_write(priv, ICMSR, 0);
 }
 rcar_i2c_write(priv, ICMIER, read ? RCAR_IRQ_RECV : RCAR_IRQ_SEND);
}
