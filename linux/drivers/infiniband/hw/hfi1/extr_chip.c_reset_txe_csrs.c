
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int NUM_CONTEXTS_PER_SET ;
 scalar_t__ SEND_BTH_QP ;
 scalar_t__ SEND_CM_CREDIT_VL ;
 scalar_t__ SEND_CM_CREDIT_VL15 ;
 scalar_t__ SEND_CM_CTRL ;
 unsigned long long SEND_CM_CTRL_RESETCSR ;
 scalar_t__ SEND_CM_GLOBAL_CREDIT ;
 unsigned long long SEND_CM_GLOBAL_CREDIT_RESETCSR ;
 scalar_t__ SEND_CM_LOCAL_AU_TABLE0_TO3 ;
 scalar_t__ SEND_CM_LOCAL_AU_TABLE4_TO7 ;
 scalar_t__ SEND_CM_REMOTE_AU_TABLE0_TO3 ;
 scalar_t__ SEND_CM_REMOTE_AU_TABLE4_TO7 ;
 scalar_t__ SEND_CM_TIMER_CTRL ;
 scalar_t__ SEND_CONTEXT_SET_CTRL ;
 scalar_t__ SEND_COUNTER_ARRAY32 ;
 scalar_t__ SEND_COUNTER_ARRAY64 ;
 scalar_t__ SEND_CTRL ;
 int SEND_CTXT_CHECK_ENABLE ;
 int SEND_CTXT_CHECK_JOB_KEY ;
 int SEND_CTXT_CHECK_OPCODE ;
 int SEND_CTXT_CHECK_PARTITION_KEY ;
 int SEND_CTXT_CHECK_SLID ;
 int SEND_CTXT_CHECK_VL ;
 int SEND_CTXT_CREDIT_CTRL ;
 int SEND_CTXT_CREDIT_FORCE ;
 int SEND_CTXT_CREDIT_RETURN_ADDR ;
 int SEND_CTXT_CTRL ;
 int SEND_CTXT_ERR_CLEAR ;
 int SEND_CTXT_ERR_MASK ;
 int SEND_DMA_BASE_ADDR ;
 int SEND_DMA_CHECK_ENABLE ;
 int SEND_DMA_CHECK_JOB_KEY ;
 int SEND_DMA_CHECK_OPCODE ;
 int SEND_DMA_CHECK_PARTITION_KEY ;
 int SEND_DMA_CHECK_SLID ;
 int SEND_DMA_CHECK_VL ;
 int SEND_DMA_CTRL ;
 int SEND_DMA_DESC_CNT ;
 int SEND_DMA_ENG_ERR_CLEAR ;
 int SEND_DMA_ENG_ERR_MASK ;
 scalar_t__ SEND_DMA_ERR_CLEAR ;
 scalar_t__ SEND_DMA_ERR_MASK ;
 int SEND_DMA_HEAD_ADDR ;
 int SEND_DMA_LEN_GEN ;
 int SEND_DMA_MEMORY ;
 int SEND_DMA_PRIORITY_THLD ;
 int SEND_DMA_RELOAD_CNT ;
 int SEND_DMA_TAIL ;
 scalar_t__ SEND_EGRESS_ERR_CLEAR ;
 scalar_t__ SEND_EGRESS_ERR_INFO ;
 scalar_t__ SEND_EGRESS_ERR_MASK ;
 scalar_t__ SEND_ERR_CLEAR ;
 scalar_t__ SEND_ERR_MASK ;
 scalar_t__ SEND_HIGH_PRIORITY_LIMIT ;
 scalar_t__ SEND_HIGH_PRIORITY_LIST ;
 scalar_t__ SEND_LEN_CHECK0 ;
 scalar_t__ SEND_LEN_CHECK1 ;
 scalar_t__ SEND_LOW_PRIORITY_LIST ;
 scalar_t__ SEND_PIO_ERR_CLEAR ;
 scalar_t__ SEND_PIO_ERR_MASK ;
 scalar_t__ SEND_SC2VLT0 ;
 scalar_t__ SEND_SC2VLT1 ;
 scalar_t__ SEND_SC2VLT2 ;
 scalar_t__ SEND_SC2VLT3 ;
 scalar_t__ SEND_STATIC_RATE_CONTROL ;
 int TXE_NUM_32_BIT_COUNTER ;
 int TXE_NUM_64_BIT_COUNTER ;
 int TXE_NUM_DATA_VL ;
 int VL_ARB_HIGH_PRIO_TABLE_SIZE ;
 int VL_ARB_LOW_PRIO_TABLE_SIZE ;
 int __cm_reset (struct hfi1_devdata*,int ) ;
 int chip_sdma_engines (struct hfi1_devdata*) ;
 int chip_send_contexts (struct hfi1_devdata*) ;
 int pio_reset_all (struct hfi1_devdata*) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,unsigned long long) ;
 int write_kctxt_csr (struct hfi1_devdata*,int,int ,unsigned long long) ;

__attribute__((used)) static void reset_txe_csrs(struct hfi1_devdata *dd)
{
 int i;




 write_csr(dd, SEND_CTRL, 0);
 __cm_reset(dd, 0);




 write_csr(dd, SEND_HIGH_PRIORITY_LIMIT, 0);
 pio_reset_all(dd);

 write_csr(dd, SEND_PIO_ERR_MASK, 0);
 write_csr(dd, SEND_PIO_ERR_CLEAR, ~0ull);


 write_csr(dd, SEND_DMA_ERR_MASK, 0);
 write_csr(dd, SEND_DMA_ERR_CLEAR, ~0ull);


 write_csr(dd, SEND_EGRESS_ERR_MASK, 0);
 write_csr(dd, SEND_EGRESS_ERR_CLEAR, ~0ull);

 write_csr(dd, SEND_BTH_QP, 0);
 write_csr(dd, SEND_STATIC_RATE_CONTROL, 0);
 write_csr(dd, SEND_SC2VLT0, 0);
 write_csr(dd, SEND_SC2VLT1, 0);
 write_csr(dd, SEND_SC2VLT2, 0);
 write_csr(dd, SEND_SC2VLT3, 0);
 write_csr(dd, SEND_LEN_CHECK0, 0);
 write_csr(dd, SEND_LEN_CHECK1, 0);

 write_csr(dd, SEND_ERR_MASK, 0);
 write_csr(dd, SEND_ERR_CLEAR, ~0ull);

 for (i = 0; i < VL_ARB_LOW_PRIO_TABLE_SIZE; i++)
  write_csr(dd, SEND_LOW_PRIORITY_LIST + (8 * i), 0);
 for (i = 0; i < VL_ARB_HIGH_PRIO_TABLE_SIZE; i++)
  write_csr(dd, SEND_HIGH_PRIORITY_LIST + (8 * i), 0);
 for (i = 0; i < chip_send_contexts(dd) / NUM_CONTEXTS_PER_SET; i++)
  write_csr(dd, SEND_CONTEXT_SET_CTRL + (8 * i), 0);
 for (i = 0; i < TXE_NUM_32_BIT_COUNTER; i++)
  write_csr(dd, SEND_COUNTER_ARRAY32 + (8 * i), 0);
 for (i = 0; i < TXE_NUM_64_BIT_COUNTER; i++)
  write_csr(dd, SEND_COUNTER_ARRAY64 + (8 * i), 0);
 write_csr(dd, SEND_CM_CTRL, SEND_CM_CTRL_RESETCSR);
 write_csr(dd, SEND_CM_GLOBAL_CREDIT, SEND_CM_GLOBAL_CREDIT_RESETCSR);

 write_csr(dd, SEND_CM_TIMER_CTRL, 0);
 write_csr(dd, SEND_CM_LOCAL_AU_TABLE0_TO3, 0);
 write_csr(dd, SEND_CM_LOCAL_AU_TABLE4_TO7, 0);
 write_csr(dd, SEND_CM_REMOTE_AU_TABLE0_TO3, 0);
 write_csr(dd, SEND_CM_REMOTE_AU_TABLE4_TO7, 0);
 for (i = 0; i < TXE_NUM_DATA_VL; i++)
  write_csr(dd, SEND_CM_CREDIT_VL + (8 * i), 0);
 write_csr(dd, SEND_CM_CREDIT_VL15, 0);




 write_csr(dd, SEND_EGRESS_ERR_INFO, ~0ull);






 for (i = 0; i < chip_send_contexts(dd); i++) {
  write_kctxt_csr(dd, i, SEND_CTXT_CTRL, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CREDIT_CTRL, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CREDIT_RETURN_ADDR, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CREDIT_FORCE, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_ERR_MASK, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_ERR_CLEAR, ~0ull);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_ENABLE, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_VL, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_JOB_KEY, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_PARTITION_KEY, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_SLID, 0);
  write_kctxt_csr(dd, i, SEND_CTXT_CHECK_OPCODE, 0);
 }




 for (i = 0; i < chip_sdma_engines(dd); i++) {
  write_kctxt_csr(dd, i, SEND_DMA_CTRL, 0);

  write_kctxt_csr(dd, i, SEND_DMA_BASE_ADDR, 0);
  write_kctxt_csr(dd, i, SEND_DMA_LEN_GEN, 0);
  write_kctxt_csr(dd, i, SEND_DMA_TAIL, 0);

  write_kctxt_csr(dd, i, SEND_DMA_HEAD_ADDR, 0);
  write_kctxt_csr(dd, i, SEND_DMA_PRIORITY_THLD, 0);

  write_kctxt_csr(dd, i, SEND_DMA_RELOAD_CNT, 0);
  write_kctxt_csr(dd, i, SEND_DMA_DESC_CNT, 0);


  write_kctxt_csr(dd, i, SEND_DMA_ENG_ERR_MASK, 0);
  write_kctxt_csr(dd, i, SEND_DMA_ENG_ERR_CLEAR, ~0ull);

  write_kctxt_csr(dd, i, SEND_DMA_CHECK_ENABLE, 0);
  write_kctxt_csr(dd, i, SEND_DMA_CHECK_VL, 0);
  write_kctxt_csr(dd, i, SEND_DMA_CHECK_JOB_KEY, 0);
  write_kctxt_csr(dd, i, SEND_DMA_CHECK_PARTITION_KEY, 0);
  write_kctxt_csr(dd, i, SEND_DMA_CHECK_SLID, 0);
  write_kctxt_csr(dd, i, SEND_DMA_CHECK_OPCODE, 0);
  write_kctxt_csr(dd, i, SEND_DMA_MEMORY, 0);
 }
}
