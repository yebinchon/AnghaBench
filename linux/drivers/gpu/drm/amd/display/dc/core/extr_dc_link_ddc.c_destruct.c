
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc_service {scalar_t__ ddc_pin; } ;


 int dal_gpio_destroy_ddc (scalar_t__*) ;

__attribute__((used)) static void destruct(struct ddc_service *ddc)
{
 if (ddc->ddc_pin)
  dal_gpio_destroy_ddc(&ddc->ddc_pin);
}
