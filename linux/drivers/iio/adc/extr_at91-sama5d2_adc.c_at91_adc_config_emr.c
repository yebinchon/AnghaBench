
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_adc_state {int oversampling_ratio; } ;





 int AT91_SAMA5D2_EMR ;
 unsigned int AT91_SAMA5D2_EMR_ASTE (int) ;
 unsigned int AT91_SAMA5D2_EMR_OSR (int ) ;
 int AT91_SAMA5D2_EMR_OSR_16SAMPLES ;
 int AT91_SAMA5D2_EMR_OSR_1SAMPLES ;
 int AT91_SAMA5D2_EMR_OSR_4SAMPLES ;
 unsigned int AT91_SAMA5D2_EMR_OSR_MASK ;
 unsigned int at91_adc_readl (struct at91_adc_state*,int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,unsigned int) ;

__attribute__((used)) static void at91_adc_config_emr(struct at91_adc_state *st)
{

 unsigned int emr = at91_adc_readl(st, AT91_SAMA5D2_EMR);


 emr |= AT91_SAMA5D2_EMR_ASTE(1);


 emr &= ~AT91_SAMA5D2_EMR_OSR_MASK;


 switch (st->oversampling_ratio) {
 case 129:
  emr |= AT91_SAMA5D2_EMR_OSR(AT91_SAMA5D2_EMR_OSR_1SAMPLES) &
         AT91_SAMA5D2_EMR_OSR_MASK;
  break;
 case 128:
  emr |= AT91_SAMA5D2_EMR_OSR(AT91_SAMA5D2_EMR_OSR_4SAMPLES) &
         AT91_SAMA5D2_EMR_OSR_MASK;
  break;
 case 130:
  emr |= AT91_SAMA5D2_EMR_OSR(AT91_SAMA5D2_EMR_OSR_16SAMPLES) &
         AT91_SAMA5D2_EMR_OSR_MASK;
  break;
 }

 at91_adc_writel(st, AT91_SAMA5D2_EMR, emr);
}
