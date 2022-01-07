
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int (* read_reg ) (scalar_t__) ;} ;
struct mpc8xxx_gpio_chip {int irq; scalar_t__ regs; struct gpio_chip gc; } ;
struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;


 scalar_t__ GPIO_IER ;
 scalar_t__ GPIO_IMR ;
 scalar_t__ ffs (unsigned int) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct mpc8xxx_gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_linear_revmap (int ,scalar_t__) ;
 unsigned int stub1 (scalar_t__) ;
 unsigned int stub2 (scalar_t__) ;
 int stub3 (int *) ;

__attribute__((used)) static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct gpio_chip *gc = &mpc8xxx_gc->gc;
 unsigned int mask;

 mask = gc->read_reg(mpc8xxx_gc->regs + GPIO_IER)
  & gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR);
 if (mask)
  generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
           32 - ffs(mask)));
 if (chip->irq_eoi)
  chip->irq_eoi(&desc->irq_data);
}
