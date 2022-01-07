
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct hw_gpio_pin {int dummy; } ;
struct TYPE_3__ {int * regs; } ;
struct hw_generic {TYPE_1__ base; int * masks; int * shifts; TYPE_2__* regs; } ;
struct TYPE_4__ {int gpio; } ;


 struct hw_generic* HW_GENERIC_FROM_BASE (struct hw_gpio_pin*) ;
 int * generic_mask ;
 TYPE_2__* generic_regs ;
 int * generic_shift ;

__attribute__((used)) static void define_generic_registers(struct hw_gpio_pin *pin, uint32_t en)
{
 struct hw_generic *generic = HW_GENERIC_FROM_BASE(pin);

 generic->regs = &generic_regs[en];
 generic->shifts = &generic_shift[en];
 generic->masks = &generic_mask[en];
 generic->base.regs = &generic_regs[en].gpio;
}
