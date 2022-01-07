
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_sample_rate; } ;
struct at91_adc_state {TYPE_1__ soc_info; } ;


 int AT91_SAMA5D2_CR ;
 int AT91_SAMA5D2_CR_SWRST ;
 int AT91_SAMA5D2_IDR ;
 int AT91_SAMA5D2_MR ;
 int AT91_SAMA5D2_MR_ANACH ;
 int AT91_SAMA5D2_MR_TRANSFER (int) ;
 int at91_adc_config_emr (struct at91_adc_state*) ;
 int at91_adc_setup_samp_freq (struct at91_adc_state*,int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;

__attribute__((used)) static void at91_adc_hw_init(struct at91_adc_state *st)
{
 at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
 at91_adc_writel(st, AT91_SAMA5D2_IDR, 0xffffffff);




 at91_adc_writel(st, AT91_SAMA5D2_MR,
   AT91_SAMA5D2_MR_TRANSFER(2) | AT91_SAMA5D2_MR_ANACH);

 at91_adc_setup_samp_freq(st, st->soc_info.min_sample_rate);


 at91_adc_config_emr(st);
}
