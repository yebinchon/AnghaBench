
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_gpio_pin {int dummy; } ;
struct hw_generic {int dummy; } ;


 struct hw_generic* HW_GENERIC_FROM_BASE (struct hw_gpio_pin*) ;
 int dal_hw_generic_destruct (struct hw_generic*) ;
 int kfree (struct hw_generic*) ;

__attribute__((used)) static void destroy(
 struct hw_gpio_pin **ptr)
{
 struct hw_generic *generic = HW_GENERIC_FROM_BASE(*ptr);

 dal_hw_generic_destruct(generic);

 kfree(generic);

 *ptr = ((void*)0);
}
