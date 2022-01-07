
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_ctxtdata {int ctxt; int dd; scalar_t__ rcvhdrtail_kvaddr; } ;


 int RCV_HDR_HEAD ;
 int RCV_HDR_HEAD_HEAD_SHIFT ;
 int RCV_HDR_HEAD_HEAD_SMASK ;
 int RCV_HDR_TAIL ;
 int get_rcvhdrtail (struct hfi1_ctxtdata*) ;
 int read_uctxt_csr (int ,int ,int ) ;

u32 hdrqempty(struct hfi1_ctxtdata *rcd)
{
 u32 head, tail;

 head = (read_uctxt_csr(rcd->dd, rcd->ctxt, RCV_HDR_HEAD)
  & RCV_HDR_HEAD_HEAD_SMASK) >> RCV_HDR_HEAD_HEAD_SHIFT;

 if (rcd->rcvhdrtail_kvaddr)
  tail = get_rcvhdrtail(rcd);
 else
  tail = read_uctxt_csr(rcd->dd, rcd->ctxt, RCV_HDR_TAIL);

 return head == tail;
}
