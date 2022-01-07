
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int regs; } ;


 int MX25_ADCQ_CR ;
 int MX25_ADCQ_CR_PDMSK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void mx25_tcq_disable_touch_irq(struct mx25_tcq_priv *priv)
{
 regmap_update_bits(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_PDMSK,
      MX25_ADCQ_CR_PDMSK);
}
