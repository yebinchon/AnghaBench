
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_hpd {int dummy; } ;
struct hw_gpio_pin {int dummy; } ;


 struct hw_hpd* HW_HPD_FROM_BASE (struct hw_gpio_pin*) ;
 int destruct (struct hw_hpd*) ;
 int kfree (struct hw_hpd*) ;

__attribute__((used)) static void destroy(
 struct hw_gpio_pin **ptr)
{
 struct hw_hpd *hpd = HW_HPD_FROM_BASE(*ptr);

 destruct(hpd);

 kfree(hpd);

 *ptr = ((void*)0);
}
