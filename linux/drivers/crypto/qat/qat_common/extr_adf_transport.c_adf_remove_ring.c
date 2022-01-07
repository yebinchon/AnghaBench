
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_etr_ring_data {int ring_number; struct adf_etr_bank_data* bank; } ;
struct adf_etr_bank_data {int bank_number; int csr_addr; } ;


 int WRITE_CSR_RING_BASE (int ,int ,int ,int ) ;
 int WRITE_CSR_RING_CONFIG (int ,int ,int ,int ) ;
 int adf_cleanup_ring (struct adf_etr_ring_data*) ;
 int adf_disable_ring_irq (struct adf_etr_bank_data*,int ) ;
 int adf_ring_debugfs_rm (struct adf_etr_ring_data*) ;
 int adf_unreserve_ring (struct adf_etr_bank_data*,int ) ;
 int adf_update_ring_arb (struct adf_etr_ring_data*) ;

void adf_remove_ring(struct adf_etr_ring_data *ring)
{
 struct adf_etr_bank_data *bank = ring->bank;


 adf_disable_ring_irq(bank, ring->ring_number);


 WRITE_CSR_RING_CONFIG(bank->csr_addr, bank->bank_number,
         ring->ring_number, 0);
 WRITE_CSR_RING_BASE(bank->csr_addr, bank->bank_number,
       ring->ring_number, 0);
 adf_ring_debugfs_rm(ring);
 adf_unreserve_ring(bank, ring->ring_number);

 adf_update_ring_arb(ring);
 adf_cleanup_ring(ring);
}
