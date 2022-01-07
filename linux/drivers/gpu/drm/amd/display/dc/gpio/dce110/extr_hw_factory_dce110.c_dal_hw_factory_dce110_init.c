
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_factory {int* number_of_pins; int * funcs; } ;


 size_t GPIO_ID_DDC_CLOCK ;
 size_t GPIO_ID_DDC_DATA ;
 size_t GPIO_ID_GENERIC ;
 size_t GPIO_ID_GPIO_PAD ;
 size_t GPIO_ID_GSL ;
 size_t GPIO_ID_HPD ;
 size_t GPIO_ID_SYNC ;
 size_t GPIO_ID_VIP_PAD ;
 int funcs ;

void dal_hw_factory_dce110_init(struct hw_factory *factory)
{

 factory->number_of_pins[GPIO_ID_DDC_DATA] = 8;
 factory->number_of_pins[GPIO_ID_DDC_CLOCK] = 8;
 factory->number_of_pins[GPIO_ID_GENERIC] = 7;
 factory->number_of_pins[GPIO_ID_HPD] = 6;
 factory->number_of_pins[GPIO_ID_GPIO_PAD] = 31;
 factory->number_of_pins[GPIO_ID_VIP_PAD] = 0;
 factory->number_of_pins[GPIO_ID_SYNC] = 2;
 factory->number_of_pins[GPIO_ID_GSL] = 4;

 factory->funcs = &funcs;
}
