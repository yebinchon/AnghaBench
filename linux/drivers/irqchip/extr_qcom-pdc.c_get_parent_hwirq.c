
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_pin_region {int pin_base; int cnt; unsigned long parent_base; } ;
typedef unsigned long irq_hw_number_t ;


 int WARN_ON (int) ;
 struct pdc_pin_region* pdc_region ;
 int pdc_region_cnt ;

__attribute__((used)) static irq_hw_number_t get_parent_hwirq(int pin)
{
 int i;
 struct pdc_pin_region *region;

 for (i = 0; i < pdc_region_cnt; i++) {
  region = &pdc_region[i];
  if (pin >= region->pin_base &&
      pin < region->pin_base + region->cnt)
   return (region->parent_base + pin - region->pin_base);
 }

 WARN_ON(1);
 return ~0UL;
}
