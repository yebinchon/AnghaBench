
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dataout; } ;
struct gpio_bank {TYPE_2__* regs; scalar_t__ base; TYPE_1__ context; } ;
struct TYPE_4__ {scalar_t__ dataout; } ;


 int BIT (unsigned int) ;
 int omap_gpio_rmw (scalar_t__,int ,int) ;

__attribute__((used)) static void omap_set_gpio_dataout_mask(struct gpio_bank *bank, unsigned offset,
           int enable)
{
 bank->context.dataout = omap_gpio_rmw(bank->base + bank->regs->dataout,
           BIT(offset), enable);
}
