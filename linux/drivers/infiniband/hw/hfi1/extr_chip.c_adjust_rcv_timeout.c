
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {scalar_t__ rcv_intr_timeout_csr; } ;
struct hfi1_ctxtdata {scalar_t__ rcvavail_timeout; int ctxt; struct hfi1_devdata* dd; } ;


 int RCV_AVAIL_TIME_OUT ;
 int RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ rcv_intr_count ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,int) ;

__attribute__((used)) static void adjust_rcv_timeout(struct hfi1_ctxtdata *rcd, u32 npkts)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 timeout = rcd->rcvavail_timeout;
 if (npkts < rcv_intr_count) {




  if (timeout < 2)
   return;
  timeout >>= 1;
 } else {




  if (timeout >= dd->rcv_intr_timeout_csr)
   return;
  timeout = min(timeout << 1, dd->rcv_intr_timeout_csr);
 }

 rcd->rcvavail_timeout = timeout;




 write_kctxt_csr(dd, rcd->ctxt, RCV_AVAIL_TIME_OUT,
   (u64)timeout <<
   RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT);
}
