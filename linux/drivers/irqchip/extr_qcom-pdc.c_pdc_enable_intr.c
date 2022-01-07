
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int CLEAR_INTR (int,int) ;
 int ENABLE_INTR (int,int) ;
 int IRQ_ENABLE_BANK ;
 int pdc_lock ;
 int pdc_reg_read (int ,int) ;
 int pdc_reg_write (int ,int,int) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void pdc_enable_intr(struct irq_data *d, bool on)
{
 int pin_out = d->hwirq;
 u32 index, mask;
 u32 enable;

 index = pin_out / 32;
 mask = pin_out % 32;

 raw_spin_lock(&pdc_lock);
 enable = pdc_reg_read(IRQ_ENABLE_BANK, index);
 enable = on ? ENABLE_INTR(enable, mask) : CLEAR_INTR(enable, mask);
 pdc_reg_write(IRQ_ENABLE_BANK, index, enable);
 raw_spin_unlock(&pdc_lock);
}
