
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct spear_adc_state {TYPE_3__* adc_base_spear3xx; TYPE_2__* adc_base_spear6xx; int np; } ;
struct TYPE_6__ {int average; } ;
struct TYPE_4__ {int msb; } ;
struct TYPE_5__ {TYPE_1__ average; } ;


 int SPEAR_ADC_DATA_MASK ;
 int __raw_readl (int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

__attribute__((used)) static u32 spear_adc_get_average(struct spear_adc_state *st)
{
 if (of_device_is_compatible(st->np, "st,spear600-adc")) {
  return __raw_readl(&st->adc_base_spear6xx->average.msb) &
   SPEAR_ADC_DATA_MASK;
 } else {
  return __raw_readl(&st->adc_base_spear3xx->average) &
   SPEAR_ADC_DATA_MASK;
 }
}
