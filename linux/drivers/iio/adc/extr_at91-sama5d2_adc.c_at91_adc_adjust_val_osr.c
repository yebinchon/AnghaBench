
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_adc_state {scalar_t__ oversampling_ratio; } ;


 scalar_t__ AT91_OSR_1SAMPLES ;
 scalar_t__ AT91_OSR_4SAMPLES ;
 int IIO_VAL_INT ;

__attribute__((used)) static int at91_adc_adjust_val_osr(struct at91_adc_state *st, int *val)
{
 if (st->oversampling_ratio == AT91_OSR_1SAMPLES) {




  *val <<= 2;
 } else if (st->oversampling_ratio == AT91_OSR_4SAMPLES) {




  *val <<= 1;
 }

 return IIO_VAL_INT;
}
