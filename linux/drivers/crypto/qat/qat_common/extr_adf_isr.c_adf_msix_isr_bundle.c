
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_etr_bank_data {int resp_handler; int bank_number; int csr_addr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int WRITE_CSR_INT_FLAG_AND_COL (int ,int ,int ) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t adf_msix_isr_bundle(int irq, void *bank_ptr)
{
 struct adf_etr_bank_data *bank = bank_ptr;

 WRITE_CSR_INT_FLAG_AND_COL(bank->csr_addr, bank->bank_number, 0);
 tasklet_hi_schedule(&bank->resp_handler);
 return IRQ_HANDLED;
}
