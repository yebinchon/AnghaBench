
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ icode; int vcu; } ;


 unsigned long long HFI1_CREDIT_RETURN_RATE ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 int SEND_CM_TIMER_CTRL ;
 int SEND_CTXT_ERR_MASK ;
 int SEND_DMA_ENG_ERR_MASK ;
 int SEND_DMA_ERR_MASK ;
 int SEND_EGRESS_ERR_MASK ;
 int SEND_ERR_MASK ;
 int SEND_PIO_ERR_MASK ;
 int assign_local_cm_au_table (struct hfi1_devdata*,int ) ;
 int chip_sdma_engines (struct hfi1_devdata*) ;
 int chip_send_contexts (struct hfi1_devdata*) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;
 int write_kctxt_csr (struct hfi1_devdata*,int,int ,unsigned long long) ;

__attribute__((used)) static void init_txe(struct hfi1_devdata *dd)
{
 int i;


 write_csr(dd, SEND_PIO_ERR_MASK, ~0ull);
 write_csr(dd, SEND_DMA_ERR_MASK, ~0ull);
 write_csr(dd, SEND_ERR_MASK, ~0ull);
 write_csr(dd, SEND_EGRESS_ERR_MASK, ~0ull);


 for (i = 0; i < chip_send_contexts(dd); i++)
  write_kctxt_csr(dd, i, SEND_CTXT_ERR_MASK, ~0ull);
 for (i = 0; i < chip_sdma_engines(dd); i++)
  write_kctxt_csr(dd, i, SEND_DMA_ENG_ERR_MASK, ~0ull);


 assign_local_cm_au_table(dd, dd->vcu);





 if (dd->icode != ICODE_FUNCTIONAL_SIMULATOR)
  write_csr(dd, SEND_CM_TIMER_CTRL, HFI1_CREDIT_RETURN_RATE);
}
