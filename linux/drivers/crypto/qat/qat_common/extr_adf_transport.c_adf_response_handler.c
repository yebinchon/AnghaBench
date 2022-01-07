
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_etr_bank_data {int irq_mask; int bank_number; int csr_addr; } ;


 int WRITE_CSR_INT_FLAG_AND_COL (int ,int ,int ) ;
 int adf_ring_response_handler (struct adf_etr_bank_data*) ;

void adf_response_handler(uintptr_t bank_addr)
{
 struct adf_etr_bank_data *bank = (void *)bank_addr;


 adf_ring_response_handler(bank);
 WRITE_CSR_INT_FLAG_AND_COL(bank->csr_addr, bank->bank_number,
       bank->irq_mask);
}
