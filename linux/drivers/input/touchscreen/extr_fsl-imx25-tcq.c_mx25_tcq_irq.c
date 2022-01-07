
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_tcq_priv {int regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int MX25_ADCQ_SR ;
 int MX25_ADCQ_SR_FDRY ;
 int MX25_ADCQ_SR_FOR ;
 int MX25_ADCQ_SR_FRR ;
 int MX25_ADCQ_SR_FUR ;
 int MX25_ADCQ_SR_PD ;
 int mx25_tcq_disable_fifo_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_disable_touch_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_enable_fifo_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_force_queue_start (struct mx25_tcq_priv*) ;
 int mx25_tcq_re_enable_touch_detection (struct mx25_tcq_priv*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static irqreturn_t mx25_tcq_irq(int irq, void *dev_id)
{
 struct mx25_tcq_priv *priv = dev_id;
 u32 stat;
 int ret = IRQ_HANDLED;

 regmap_read(priv->regs, MX25_ADCQ_SR, &stat);

 if (stat & (MX25_ADCQ_SR_FRR | MX25_ADCQ_SR_FUR | MX25_ADCQ_SR_FOR))
  mx25_tcq_re_enable_touch_detection(priv);

 if (stat & MX25_ADCQ_SR_PD) {
  mx25_tcq_disable_touch_irq(priv);
  mx25_tcq_force_queue_start(priv);
  mx25_tcq_enable_fifo_irq(priv);
 }

 if (stat & MX25_ADCQ_SR_FDRY) {
  mx25_tcq_disable_fifo_irq(priv);
  ret = IRQ_WAKE_THREAD;
 }

 regmap_update_bits(priv->regs, MX25_ADCQ_SR, MX25_ADCQ_SR_FRR |
      MX25_ADCQ_SR_FUR | MX25_ADCQ_SR_FOR |
      MX25_ADCQ_SR_PD,
      MX25_ADCQ_SR_FRR | MX25_ADCQ_SR_FUR |
      MX25_ADCQ_SR_FOR | MX25_ADCQ_SR_PD);

 return ret;
}
