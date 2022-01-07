
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adf_etr_bank_data {int irq_mask; int bank_number; int csr_addr; int lock; } ;


 int WRITE_CSR_INT_COL_EN (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void adf_disable_ring_irq(struct adf_etr_bank_data *bank, uint32_t ring)
{
 spin_lock_bh(&bank->lock);
 bank->irq_mask &= ~(1 << ring);
 spin_unlock_bh(&bank->lock);
 WRITE_CSR_INT_COL_EN(bank->csr_addr, bank->bank_number, bank->irq_mask);
}
