
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_enable; int irq_disable; int irq_set_type; } ;
struct irq_chip_type {int handler; TYPE_1__ chip; } ;
struct irq_chip_generic {scalar_t__ irq_base; scalar_t__ irq_cnt; struct irq_chip_type* chip_types; struct gsta_gpio* private; } ;
struct gsta_gpio {int irq_base; int dev; int reg_base; } ;


 int ENOMEM ;
 int GSTA_NR_GPIO ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int KBUILD_MODNAME ;
 struct irq_chip_generic* devm_irq_alloc_generic_chip (int ,int ,int,int,int ,int ) ;
 int devm_irq_setup_generic_chip (int ,struct irq_chip_generic*,int ,int ,int,int ) ;
 int gsta_irq_disable ;
 int gsta_irq_enable ;
 int gsta_irq_type ;
 int handle_simple_irq ;
 int irq_clear_status_flags (int,int) ;
 int irq_set_chip_and_handler (int,TYPE_1__*,int ) ;
 int irq_set_chip_data (int,struct irq_chip_generic*) ;

__attribute__((used)) static int gsta_alloc_irq_chip(struct gsta_gpio *chip)
{
 struct irq_chip_generic *gc;
 struct irq_chip_type *ct;
 int rv;

 gc = devm_irq_alloc_generic_chip(chip->dev, KBUILD_MODNAME, 1,
      chip->irq_base,
      chip->reg_base, handle_simple_irq);
 if (!gc)
  return -ENOMEM;

 gc->private = chip;
 ct = gc->chip_types;

 ct->chip.irq_set_type = gsta_irq_type;
 ct->chip.irq_disable = gsta_irq_disable;
 ct->chip.irq_enable = gsta_irq_enable;


 rv = devm_irq_setup_generic_chip(chip->dev, gc,
      0 ,
      0, IRQ_NOREQUEST | IRQ_NOPROBE, 0);
 if (rv)
  return rv;


 {
  struct irq_chip_type *ct = gc->chip_types;
  int i, j;
  for (j = 0; j < GSTA_NR_GPIO; j++) {
   i = chip->irq_base + j;
   irq_set_chip_and_handler(i, &ct->chip, ct->handler);
   irq_set_chip_data(i, gc);
   irq_clear_status_flags(i, IRQ_NOREQUEST | IRQ_NOPROBE);
  }
  gc->irq_cnt = i - gc->irq_base;
 }

 return 0;
}
