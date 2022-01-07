
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mx25_tcq_priv {int regs; int core_regs; } ;


 int MX25_ADCQ_CFG_IGS ;
 int MX25_ADCQ_MR ;
 int MX25_ADCQ_MR_PD_IRQ ;
 int MX25_ADCQ_SR ;
 int MX25_ADCQ_SR_PD ;
 int MX25_PRECHARGE_VALUE ;
 int MX25_TOUCH_DETECT_VALUE ;
 int MX25_TSC_TICR ;
 int mx25_tcq_enable_touch_irq (struct mx25_tcq_priv*) ;
 int mx25_tcq_fifo_reset (struct mx25_tcq_priv*) ;
 int mx25_tcq_force_queue_stop (struct mx25_tcq_priv*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void mx25_tcq_re_enable_touch_detection(struct mx25_tcq_priv *priv)
{

 mx25_tcq_force_queue_stop(priv);


 regmap_write(priv->core_regs, MX25_TSC_TICR, MX25_PRECHARGE_VALUE);


 mx25_tcq_fifo_reset(priv);


 regmap_write(priv->core_regs, MX25_TSC_TICR,
       MX25_TOUCH_DETECT_VALUE | MX25_ADCQ_CFG_IGS);

 regmap_update_bits(priv->regs, MX25_ADCQ_SR, MX25_ADCQ_SR_PD,
      MX25_ADCQ_SR_PD);


 regmap_update_bits(priv->regs, MX25_ADCQ_MR, MX25_ADCQ_MR_PD_IRQ, 0);


 mx25_tcq_enable_touch_irq(priv);
}
