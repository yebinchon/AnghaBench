
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_tcq_priv {int regs; } ;


 int MX25_ADCQ_CR ;
 int MX25_ADCQ_CR_FRST ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void mx25_tcq_fifo_reset(struct mx25_tcq_priv *priv)
{
 u32 tcqcr;

 regmap_read(priv->regs, MX25_ADCQ_CR, &tcqcr);
 regmap_update_bits(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_FRST,
      MX25_ADCQ_CR_FRST);
 regmap_update_bits(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_FRST, 0);
 regmap_write(priv->regs, MX25_ADCQ_CR, tcqcr);
}
