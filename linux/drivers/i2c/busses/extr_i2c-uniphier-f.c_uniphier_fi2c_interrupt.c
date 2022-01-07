
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_fi2c_priv {int enabled_irqs; int flags; int len; int lock; int comp; scalar_t__ membase; int error; } ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int ENXIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UNIPHIER_FI2C_BYTE_WISE ;
 scalar_t__ UNIPHIER_FI2C_CR ;
 int UNIPHIER_FI2C_CR_MST ;
 int UNIPHIER_FI2C_CR_NACK ;
 int UNIPHIER_FI2C_DEFER_STOP_COMP ;
 int UNIPHIER_FI2C_FIFO_SIZE ;
 scalar_t__ UNIPHIER_FI2C_INT ;
 int UNIPHIER_FI2C_INT_AL ;
 int UNIPHIER_FI2C_INT_NA ;
 int UNIPHIER_FI2C_INT_RB ;
 int UNIPHIER_FI2C_INT_RF ;
 int UNIPHIER_FI2C_INT_STOP ;
 int UNIPHIER_FI2C_INT_TE ;
 int UNIPHIER_FI2C_MANUAL_NACK ;
 int UNIPHIER_FI2C_RD ;
 int UNIPHIER_FI2C_STOP ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uniphier_fi2c_clear_irqs (struct uniphier_fi2c_priv*,int) ;
 int uniphier_fi2c_drain_rxfifo (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_fill_txfifo (struct uniphier_fi2c_priv*,int) ;
 int uniphier_fi2c_set_irqs (struct uniphier_fi2c_priv*) ;
 int uniphier_fi2c_stop (struct uniphier_fi2c_priv*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t uniphier_fi2c_interrupt(int irq, void *dev_id)
{
 struct uniphier_fi2c_priv *priv = dev_id;
 u32 irq_status;

 spin_lock(&priv->lock);

 irq_status = readl(priv->membase + UNIPHIER_FI2C_INT);
 irq_status &= priv->enabled_irqs;

 if (irq_status & UNIPHIER_FI2C_INT_STOP)
  goto complete;

 if (unlikely(irq_status & UNIPHIER_FI2C_INT_AL)) {
  priv->error = -EAGAIN;
  goto complete;
 }

 if (unlikely(irq_status & UNIPHIER_FI2C_INT_NA)) {
  priv->error = -ENXIO;
  if (priv->flags & UNIPHIER_FI2C_RD) {
   uniphier_fi2c_stop(priv);
   priv->flags |= UNIPHIER_FI2C_DEFER_STOP_COMP;
   goto complete;
  }
  goto stop;
 }

 if (irq_status & UNIPHIER_FI2C_INT_TE) {
  if (!priv->len)
   goto data_done;

  uniphier_fi2c_fill_txfifo(priv, 0);
  goto handled;
 }

 if (irq_status & (UNIPHIER_FI2C_INT_RF | UNIPHIER_FI2C_INT_RB)) {
  uniphier_fi2c_drain_rxfifo(priv);






  if (!priv->len && (irq_status & UNIPHIER_FI2C_INT_RB))
   goto data_done;

  if (unlikely(priv->flags & UNIPHIER_FI2C_MANUAL_NACK)) {
   if (priv->len <= UNIPHIER_FI2C_FIFO_SIZE &&
       !(priv->flags & UNIPHIER_FI2C_BYTE_WISE)) {
    priv->enabled_irqs |= UNIPHIER_FI2C_INT_RB;
    uniphier_fi2c_set_irqs(priv);
    priv->flags |= UNIPHIER_FI2C_BYTE_WISE;
   }
   if (priv->len <= 1)
    writel(UNIPHIER_FI2C_CR_MST |
           UNIPHIER_FI2C_CR_NACK,
           priv->membase + UNIPHIER_FI2C_CR);
  }

  goto handled;
 }

 spin_unlock(&priv->lock);

 return IRQ_NONE;

data_done:
 if (priv->flags & UNIPHIER_FI2C_STOP) {
stop:
  uniphier_fi2c_stop(priv);
 } else {
complete:
  priv->enabled_irqs = 0;
  uniphier_fi2c_set_irqs(priv);
  complete(&priv->comp);
 }

handled:





 uniphier_fi2c_clear_irqs(priv, irq_status);

 spin_unlock(&priv->lock);

 return IRQ_HANDLED;
}
