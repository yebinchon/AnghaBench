
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hfi1_pportdata {int * statusp; } ;
struct hfi1_devdata {int flags; scalar_t__ num_pports; TYPE_1__* status; struct hfi1_pportdata* pport; } ;
struct TYPE_2__ {int dev; } ;


 int HFI1_INITTED ;
 int HFI1_PRESENT ;
 int HFI1_STATUS_HWERROR ;
 int HFI1_STATUS_IB_READY ;
 int HLS_DN_DISABLE ;
 int set_link_state (struct hfi1_pportdata*,int ) ;

void hfi1_disable_after_error(struct hfi1_devdata *dd)
{
 if (dd->flags & HFI1_INITTED) {
  u32 pidx;

  dd->flags &= ~HFI1_INITTED;
  if (dd->pport)
   for (pidx = 0; pidx < dd->num_pports; ++pidx) {
    struct hfi1_pportdata *ppd;

    ppd = dd->pport + pidx;
    if (dd->flags & HFI1_PRESENT)
     set_link_state(ppd, HLS_DN_DISABLE);

    if (ppd->statusp)
     *ppd->statusp &= ~HFI1_STATUS_IB_READY;
   }
 }






 if (dd->status)
  dd->status->dev |= HFI1_STATUS_HWERROR;
}
