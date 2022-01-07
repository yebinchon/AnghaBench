
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct irq_chip_regs {scalar_t__ disable; scalar_t__ enable; } ;
struct irq_chip_generic {scalar_t__ reg_base; TYPE_1__* chip_types; } ;
struct TYPE_2__ {struct irq_chip_regs regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void intc_irq_set_mask(struct irq_chip_generic *gc, uint32_t mask)
{
 struct irq_chip_regs *regs = &gc->chip_types->regs;

 writel(mask, gc->reg_base + regs->enable);
 writel(~mask, gc->reg_base + regs->disable);
}
