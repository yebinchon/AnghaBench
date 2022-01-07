
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_ctxtdata {scalar_t__ seq_cnt; scalar_t__ head; int ctxt; int dd; int rcvhdrtail_kvaddr; } ;


 int RCV_HDR_TAIL ;
 scalar_t__ get_rcvhdrtail (struct hfi1_ctxtdata*) ;
 int get_rhf_addr (struct hfi1_ctxtdata*) ;
 scalar_t__ read_uctxt_csr (int ,int ,int ) ;
 scalar_t__ rhf_rcv_seq (int ) ;
 int rhf_to_cpu (int ) ;

__attribute__((used)) static inline int check_packet_present(struct hfi1_ctxtdata *rcd)
{
 u32 tail;
 int present;

 if (!rcd->rcvhdrtail_kvaddr)
  present = (rcd->seq_cnt ==
    rhf_rcv_seq(rhf_to_cpu(get_rhf_addr(rcd))));
 else
  present = (rcd->head != get_rcvhdrtail(rcd));

 if (present)
  return 1;


 tail = (u32)read_uctxt_csr(rcd->dd, rcd->ctxt, RCV_HDR_TAIL);
 return rcd->head != tail;
}
