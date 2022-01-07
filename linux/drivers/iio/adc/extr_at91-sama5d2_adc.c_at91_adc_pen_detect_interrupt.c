
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int touching; int sample_period_val; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 int AT91_SAMA5D2_IDR ;
 int AT91_SAMA5D2_IER ;
 int AT91_SAMA5D2_IER_NOPEN ;
 int AT91_SAMA5D2_IER_PEN ;
 int AT91_SAMA5D2_IER_PRDY ;
 int AT91_SAMA5D2_IER_XRDY ;
 int AT91_SAMA5D2_IER_YRDY ;
 int AT91_SAMA5D2_TRGR ;
 int AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC ;
 int AT91_SAMA5D2_TRGR_TRGPER (int ) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;

__attribute__((used)) static void at91_adc_pen_detect_interrupt(struct at91_adc_state *st)
{
 at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_PEN);
 at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_NOPEN |
   AT91_SAMA5D2_IER_XRDY | AT91_SAMA5D2_IER_YRDY |
   AT91_SAMA5D2_IER_PRDY);
 at91_adc_writel(st, AT91_SAMA5D2_TRGR,
   AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC |
   AT91_SAMA5D2_TRGR_TRGPER(st->touch_st.sample_period_val));
 st->touch_st.touching = 1;
}
