
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_irq_map {int source; struct ipu_irq_bank* bank; } ;
struct ipu_irq_bank {int status; int ipu; } ;


 int bank_lock ;
 unsigned long ipu_read_reg (int ,int ) ;
 struct ipu_irq_map* irq_get_chip_data (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

bool ipu_irq_status(unsigned int irq)
{
 struct ipu_irq_map *map = irq_get_chip_data(irq);
 struct ipu_irq_bank *bank;
 unsigned long lock_flags;
 bool ret;

 raw_spin_lock_irqsave(&bank_lock, lock_flags);
 bank = map->bank;
 ret = bank && ipu_read_reg(bank->ipu, bank->status) &
  (1UL << (map->source & 31));
 raw_spin_unlock_irqrestore(&bank_lock, lock_flags);

 return ret;
}
