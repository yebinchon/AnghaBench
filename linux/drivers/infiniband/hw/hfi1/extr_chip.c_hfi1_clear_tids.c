
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;
struct TYPE_2__ {scalar_t__ alloced; } ;
struct hfi1_ctxtdata {scalar_t__ eager_base; scalar_t__ expected_base; scalar_t__ expected_count; TYPE_1__ egrbufs; struct hfi1_devdata* dd; } ;


 int PT_INVALID ;
 int hfi1_put_tid (struct hfi1_devdata*,scalar_t__,int ,int ,int ) ;

void hfi1_clear_tids(struct hfi1_ctxtdata *rcd)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 i;


 for (i = rcd->eager_base; i < rcd->eager_base +
       rcd->egrbufs.alloced; i++)
  hfi1_put_tid(dd, i, PT_INVALID, 0, 0);

 for (i = rcd->expected_base;
   i < rcd->expected_base + rcd->expected_count; i++)
  hfi1_put_tid(dd, i, PT_INVALID, 0, 0);
}
