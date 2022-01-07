
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_hpd {int base; } ;


 int dal_hw_gpio_destruct (int *) ;

__attribute__((used)) static void dal_hw_hpd_destruct(
 struct hw_hpd *pin)
{
 dal_hw_gpio_destruct(&pin->base);
}
