
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
 int ID_P_REP_AFTER_RD ;
 int MAT ;
 int MDR ;
 int RCAR_BUS_PHASE_START ;
 int RCAR_BUS_PHASE_STOP ;
 int RCAR_IRQ_ACK_RECV ;
 int rcar_i2c_dma (struct rcar_i2c_priv*) ;
 int rcar_i2c_next_msg (struct rcar_i2c_priv*) ;
 int rcar_i2c_read (struct rcar_i2c_priv*,int ) ;
 int rcar_i2c_write (struct rcar_i2c_priv*,int ,int ) ;

__attribute__((used)) static void rcar_i2c_irq_recv(struct rcar_i2c_priv *priv, u32 msr)
{
 struct i2c_msg *msg = priv->msg;


 if (!(msr & MDR))
  return;

 if (msr & MAT) {




  rcar_i2c_dma(priv);
 } else if (priv->pos < msg->len) {

  msg->buf[priv->pos] = rcar_i2c_read(priv, ICRXTX);
  priv->pos++;
 }


 if (priv->pos + 1 == msg->len) {
  if (priv->flags & ID_LAST_MSG) {
   rcar_i2c_write(priv, ICMCR, RCAR_BUS_PHASE_STOP);
  } else {
   rcar_i2c_write(priv, ICMCR, RCAR_BUS_PHASE_START);
   priv->flags |= ID_P_REP_AFTER_RD;
  }
 }

 if (priv->pos == msg->len && !(priv->flags & ID_LAST_MSG))
  rcar_i2c_next_msg(priv);
 else
  rcar_i2c_write(priv, ICMSR, RCAR_IRQ_ACK_RECV);
}
