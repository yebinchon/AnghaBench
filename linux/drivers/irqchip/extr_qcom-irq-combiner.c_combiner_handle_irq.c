
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct combiner {size_t nregs; int domain; TYPE_1__* regs; } ;
struct TYPE_2__ {size_t enabled; int addr; } ;


 size_t __ffs (size_t) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct combiner* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,int) ;
 int irq_nr (size_t,size_t) ;
 int pr_warn_ratelimited (char*,int ,size_t,size_t,int ) ;
 size_t readl_relaxed (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void combiner_handle_irq(struct irq_desc *desc)
{
 struct combiner *combiner = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u32 reg;

 chained_irq_enter(chip, desc);

 for (reg = 0; reg < combiner->nregs; reg++) {
  int virq;
  int hwirq;
  u32 bit;
  u32 status;

  bit = readl_relaxed(combiner->regs[reg].addr);
  status = bit & combiner->regs[reg].enabled;
  if (bit && !status)
   pr_warn_ratelimited("Unexpected IRQ on CPU%d: (%08x %08lx %p)\n",
         smp_processor_id(), bit,
         combiner->regs[reg].enabled,
         combiner->regs[reg].addr);

  while (status) {
   bit = __ffs(status);
   status &= ~(1 << bit);
   hwirq = irq_nr(reg, bit);
   virq = irq_find_mapping(combiner->domain, hwirq);
   if (virq > 0)
    generic_handle_irq(virq);

  }
 }

 chained_irq_exit(chip, desc);
}
