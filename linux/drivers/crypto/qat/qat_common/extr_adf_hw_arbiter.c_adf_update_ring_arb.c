
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_etr_ring_data {TYPE_1__* bank; } ;
struct TYPE_2__ {int ring_mask; int bank_number; int csr_addr; } ;


 int WRITE_CSR_ARB_RINGSRVARBEN (int ,int ,int) ;

void adf_update_ring_arb(struct adf_etr_ring_data *ring)
{
 WRITE_CSR_ARB_RINGSRVARBEN(ring->bank->csr_addr,
       ring->bank->bank_number,
       ring->bank->ring_mask & 0xFF);
}
