
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 scalar_t__ cpu_has_mipsmt ;
 scalar_t__ cpu_has_vint ;
 int handle_percpu_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 struct irq_chip mips_cpu_irq_controller ;
 struct irq_chip mips_mt_cpu_irq_controller ;
 int plat_irq_dispatch ;
 int set_vi_handler (int,int ) ;

__attribute__((used)) static int mips_cpu_intc_map(struct irq_domain *d, unsigned int irq,
        irq_hw_number_t hw)
{
 struct irq_chip *chip;

 if (hw < 2 && cpu_has_mipsmt) {

  chip = &mips_mt_cpu_irq_controller;
 } else {
  chip = &mips_cpu_irq_controller;
 }

 if (cpu_has_vint)
  set_vi_handler(hw, plat_irq_dispatch);

 irq_set_chip_and_handler(irq, chip, handle_percpu_irq);

 return 0;
}
