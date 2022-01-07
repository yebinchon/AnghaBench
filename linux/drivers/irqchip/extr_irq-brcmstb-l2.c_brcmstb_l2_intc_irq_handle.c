
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int lock; } ;
struct irq_chip {int dummy; } ;
struct brcmstb_l2_intc_data {int domain; int mask_offset; int gc; int status_offset; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int ffs (int) ;
 int generic_handle_irq (int ) ;
 int handle_bad_irq (struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct brcmstb_l2_intc_data* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_linear_revmap (int ,unsigned int) ;
 int irq_reg_readl (int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void brcmstb_l2_intc_irq_handle(struct irq_desc *desc)
{
 struct brcmstb_l2_intc_data *b = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 unsigned int irq;
 u32 status;

 chained_irq_enter(chip, desc);

 status = irq_reg_readl(b->gc, b->status_offset) &
  ~(irq_reg_readl(b->gc, b->mask_offset));

 if (status == 0) {
  raw_spin_lock(&desc->lock);
  handle_bad_irq(desc);
  raw_spin_unlock(&desc->lock);
  goto out;
 }

 do {
  irq = ffs(status) - 1;
  status &= ~(1 << irq);
  generic_handle_irq(irq_linear_revmap(b->domain, irq));
 } while (status);
out:
 chained_irq_exit(chip, desc);
}
