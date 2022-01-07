
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_gpio_pin {int dummy; } ;
struct hw_ddc {int dummy; } ;


 struct hw_ddc* HW_DDC_FROM_BASE (struct hw_gpio_pin*) ;
 int destruct (struct hw_ddc*) ;
 int kfree (struct hw_ddc*) ;

__attribute__((used)) static void destroy(
 struct hw_gpio_pin **ptr)
{
 struct hw_ddc *pin = HW_DDC_FROM_BASE(*ptr);

 destruct(pin);

 kfree(pin);

 *ptr = ((void*)0);
}
