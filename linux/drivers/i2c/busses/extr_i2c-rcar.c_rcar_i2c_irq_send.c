
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_i2c_priv {int pos; int flags; struct i2c_msg* msg; } ;
struct i2c_msg {int len; int * buf; } ;


 int ICMCR ;
 int ICMSR ;
 int ICRXTX ;
 int ID_LAST_MSG ;
 int MDE ;
 int RCAR_BUS_PHASE_STOP ;
 int RCAR_IRQ_ACK_SEND ;
 scalar_t__ rcar_i2c_dma (struct rcar_i2c_priv*) ;
 int rcar_i2c_next_msg (struct rcar_i2c_priv*) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;

__attribute__((used)) static void rcar_i2c_irq_send(struct rcar_i2c_priv *priv, u32 msr)
{
 struct i2c_msg *msg = priv->msg;


 if (!(msr & MDE))
  return;


 if (priv->pos == 1 && rcar_i2c_dma(priv))
  return;

 if (priv->pos < msg->len) {







  rcar_i2c_write(priv, ICRXTX, msg->buf[priv->pos]);
  priv->pos++;
 } else {
  if (priv->flags & ID_LAST_MSG) {





   rcar_i2c_write(priv, ICMCR, RCAR_BUS_PHASE_STOP);
  } else {
   rcar_i2c_next_msg(priv);
   return;
  }
 }

 rcar_i2c_write(priv, ICMSR, RCAR_IRQ_ACK_SEND);
}
