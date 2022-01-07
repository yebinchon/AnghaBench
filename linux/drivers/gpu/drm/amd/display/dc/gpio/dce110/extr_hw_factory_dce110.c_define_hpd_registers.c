
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int * regs; } ;
struct hw_hpd {TYPE_1__ base; int * masks; int * shifts; TYPE_2__* regs; } ;
struct hw_gpio_pin {int dummy; } ;
struct TYPE_4__ {int gpio; } ;


 struct hw_hpd* HW_HPD_FROM_BASE (struct hw_gpio_pin*) ;
 int hpd_mask ;
 TYPE_2__* hpd_regs ;
 int hpd_shift ;

__attribute__((used)) static void define_hpd_registers(struct hw_gpio_pin *pin, uint32_t en)
{
 struct hw_hpd *hpd = HW_HPD_FROM_BASE(pin);

 hpd->regs = &hpd_regs[en];
 hpd->shifts = &hpd_shift;
 hpd->masks = &hpd_mask;
 hpd->base.regs = &hpd_regs[en].gpio;
}
