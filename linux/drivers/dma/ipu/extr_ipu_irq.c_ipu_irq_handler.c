
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct irq_desc {int dummy; } ;
struct ipu_irq_map {unsigned int irq; } ;
struct ipu_irq_bank {int control; int status; } ;
struct ipu {int dummy; } ;


 int IPU_IRQ_NR_BANKS ;
 int bank_lock ;
 int ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 unsigned long ipu_read_reg (struct ipu*,int ) ;
 struct ipu_irq_bank* irq_bank ;
 struct ipu* irq_desc_get_handler_data (struct irq_desc*) ;
 int pr_err (char*,int,int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct ipu_irq_map* src2map (int) ;

__attribute__((used)) static void ipu_irq_handler(struct irq_desc *desc)
{
 struct ipu *ipu = irq_desc_get_handler_data(desc);
 u32 status;
 int i, line;

 for (i = 0; i < IPU_IRQ_NR_BANKS; i++) {
  struct ipu_irq_bank *bank = irq_bank + i;

  raw_spin_lock(&bank_lock);
  status = ipu_read_reg(ipu, bank->status);





  status &= ipu_read_reg(ipu, bank->control);
  raw_spin_unlock(&bank_lock);
  while ((line = ffs(status))) {
   struct ipu_irq_map *map;
   unsigned int irq;

   line--;
   status &= ~(1UL << line);

   raw_spin_lock(&bank_lock);
   map = src2map(32 * i + line);
   if (!map) {
    raw_spin_unlock(&bank_lock);
    pr_err("IPU: Interrupt on unmapped source %u bank %d\n",
           line, i);
    continue;
   }
   irq = map->irq;
   raw_spin_unlock(&bank_lock);
   generic_handle_irq(irq);
  }
 }
}
