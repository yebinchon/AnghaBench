
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 scalar_t__ CCE_INT_MAP ;
 int CCE_NUM_INT_MAP_CSRS ;
 int PT_INVALID_FLUSH ;
 int RCV_HDR_ADDR ;
 int RCV_HDR_TAIL_ADDR ;
 scalar_t__ RCV_QP_MAP_TABLE ;
 scalar_t__ RCV_TID_FLOW_TABLE ;
 int RXE_NUM_TID_FLOWS ;
 int SEND_CTXT_CREDIT_RETURN_ADDR ;
 int chip_rcv_array_count (struct hfi1_devdata*) ;
 int chip_rcv_contexts (struct hfi1_devdata*) ;
 int chip_send_contexts (struct hfi1_devdata*) ;
 int hfi1_put_tid (struct hfi1_devdata*,int,int ,int ,int ) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;
 int write_kctxt_csr (struct hfi1_devdata*,int,int ,int ) ;
 int write_uctxt_csr (struct hfi1_devdata*,int,scalar_t__,int ) ;

__attribute__((used)) static void write_uninitialized_csrs_and_memories(struct hfi1_devdata *dd)
{
 int i, j;


 for (i = 0; i < CCE_NUM_INT_MAP_CSRS; i++)
  write_csr(dd, CCE_INT_MAP + (8 * i), 0);


 for (i = 0; i < chip_send_contexts(dd); i++)
  write_kctxt_csr(dd, i, SEND_CTXT_CREDIT_RETURN_ADDR, 0);
 for (i = 0; i < chip_rcv_contexts(dd); i++) {
  write_kctxt_csr(dd, i, RCV_HDR_ADDR, 0);
  write_kctxt_csr(dd, i, RCV_HDR_TAIL_ADDR, 0);
  for (j = 0; j < RXE_NUM_TID_FLOWS; j++)
   write_uctxt_csr(dd, i, RCV_TID_FLOW_TABLE + (8 * j), 0);
 }


 for (i = 0; i < chip_rcv_array_count(dd); i++)
  hfi1_put_tid(dd, i, PT_INVALID_FLUSH, 0, 0);


 for (i = 0; i < 32; i++)
  write_csr(dd, RCV_QP_MAP_TABLE + (8 * i), 0);
}
