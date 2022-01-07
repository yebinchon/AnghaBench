
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spear_adc_state {TYPE_2__* adc_base_spear3xx; TYPE_1__* adc_base_spear6xx; int np; } ;
struct TYPE_4__ {int scan_rate; } ;
struct TYPE_3__ {int scan_rate_hi; int scan_rate_lo; } ;


 int SPEAR600_ADC_SCAN_RATE_HI (int ) ;
 int SPEAR600_ADC_SCAN_RATE_LO (int ) ;
 int __raw_writel (int ,int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

__attribute__((used)) static void spear_adc_set_scanrate(struct spear_adc_state *st, u32 rate)
{
 if (of_device_is_compatible(st->np, "st,spear600-adc")) {
  __raw_writel(SPEAR600_ADC_SCAN_RATE_LO(rate),
        &st->adc_base_spear6xx->scan_rate_lo);
  __raw_writel(SPEAR600_ADC_SCAN_RATE_HI(rate),
        &st->adc_base_spear6xx->scan_rate_hi);
 } else {
  __raw_writel(rate, &st->adc_base_spear3xx->scan_rate);
 }
}
