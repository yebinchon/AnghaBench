
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int touching; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 int AT91_SAMA5D2_IDR ;
 int AT91_SAMA5D2_IER ;
 int AT91_SAMA5D2_IER_NOPEN ;
 int AT91_SAMA5D2_IER_PEN ;
 int AT91_SAMA5D2_IER_PRDY ;
 int AT91_SAMA5D2_IER_XRDY ;
 int AT91_SAMA5D2_IER_YRDY ;
 int AT91_SAMA5D2_TRGR ;
 int AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER ;
 int at91_adc_touch_data_handler (struct iio_dev*) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;
 struct iio_dev* iio_priv_to_dev (struct at91_adc_state*) ;

__attribute__((used)) static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(st);

 at91_adc_writel(st, AT91_SAMA5D2_TRGR,
   AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
 at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_NOPEN |
   AT91_SAMA5D2_IER_XRDY | AT91_SAMA5D2_IER_YRDY |
   AT91_SAMA5D2_IER_PRDY);
 st->touch_st.touching = 0;

 at91_adc_touch_data_handler(indio_dev);

 at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_PEN);
}
