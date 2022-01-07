
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_ring_irq_data {int ring; struct safexcel_crypto_priv* priv; } ;
struct safexcel_crypto_priv {int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ EIP197_HIA_AIC_R (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_AIC_R_ACK (int) ;
 scalar_t__ EIP197_HIA_AIC_R_ENABLED_STAT (int) ;
 scalar_t__ EIP197_HIA_RDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_STAT ;
 int EIP197_RDR_IRQ (int) ;
 int EIP197_xDR_ERR ;
 int EIP197_xDR_THRESH ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dev_err (int ,char*) ;
 scalar_t__ likely (int) ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t safexcel_irq_ring(int irq, void *data)
{
 struct safexcel_ring_irq_data *irq_data = data;
 struct safexcel_crypto_priv *priv = irq_data->priv;
 int ring = irq_data->ring, rc = IRQ_NONE;
 u32 status, stat;

 status = readl(EIP197_HIA_AIC_R(priv) + EIP197_HIA_AIC_R_ENABLED_STAT(ring));
 if (!status)
  return rc;


 if (status & EIP197_RDR_IRQ(ring)) {
  stat = readl(EIP197_HIA_RDR(priv, ring) + EIP197_HIA_xDR_STAT);

  if (unlikely(stat & EIP197_xDR_ERR)) {





   dev_err(priv->dev, "RDR: fatal error.\n");
  } else if (likely(stat & EIP197_xDR_THRESH)) {
   rc = IRQ_WAKE_THREAD;
  }


  writel(stat & 0xff,
         EIP197_HIA_RDR(priv, ring) + EIP197_HIA_xDR_STAT);
 }


 writel(status, EIP197_HIA_AIC_R(priv) + EIP197_HIA_AIC_R_ACK(ring));

 return rc;
}
