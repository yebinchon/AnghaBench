
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_gcq_priv {int regs; int completed; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MX25_ADCQ_CR ;
 int MX25_ADCQ_CR_FQS ;
 int MX25_ADCQ_MR ;
 int MX25_ADCQ_MR_EOQ_IRQ ;
 int MX25_ADCQ_SR ;
 int MX25_ADCQ_SR_EOQ ;
 int MX25_ADCQ_SR_FOR ;
 int MX25_ADCQ_SR_FRR ;
 int MX25_ADCQ_SR_FUR ;
 int MX25_ADCQ_SR_PD ;
 int complete (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t mx25_gcq_irq(int irq, void *data)
{
 struct mx25_gcq_priv *priv = data;
 u32 stats;

 regmap_read(priv->regs, MX25_ADCQ_SR, &stats);

 if (stats & MX25_ADCQ_SR_EOQ) {
  regmap_update_bits(priv->regs, MX25_ADCQ_MR,
       MX25_ADCQ_MR_EOQ_IRQ, MX25_ADCQ_MR_EOQ_IRQ);
  complete(&priv->completed);
 }


 regmap_update_bits(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_FQS, 0);


 regmap_write(priv->regs, MX25_ADCQ_SR, MX25_ADCQ_SR_FRR |
       MX25_ADCQ_SR_FUR | MX25_ADCQ_SR_FOR |
       MX25_ADCQ_SR_EOQ | MX25_ADCQ_SR_PD);

 return IRQ_HANDLED;
}
