
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int regs; } ;


 int MX25_ADCQ_MR ;
 int MX25_ADCQ_MR_FDRY_IRQ ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void mx25_tcq_disable_fifo_irq(struct mx25_tcq_priv *priv)
{
 regmap_update_bits(priv->regs, MX25_ADCQ_MR, MX25_ADCQ_MR_FDRY_IRQ,
      MX25_ADCQ_MR_FDRY_IRQ);
}
