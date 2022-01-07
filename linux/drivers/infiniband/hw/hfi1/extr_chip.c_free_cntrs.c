
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rc_delayed_comp; int * rc_qacks; int * rc_acks; } ;
struct TYPE_5__ {TYPE_1__ rvp; } ;
struct hfi1_pportdata {TYPE_2__ ibport_data; int * scntrs; int * cntrs; } ;
struct TYPE_6__ {scalar_t__ function; } ;
struct hfi1_devdata {int num_pports; int * update_cntr_wq; int * cntrnames; int * scntrs; int * cntrs; int * portcntrnames; TYPE_3__ synth_stats_timer; } ;


 int del_timer_sync (TYPE_3__*) ;
 int destroy_workqueue (int *) ;
 int free_percpu (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void free_cntrs(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 int i;

 if (dd->synth_stats_timer.function)
  del_timer_sync(&dd->synth_stats_timer);
 ppd = (struct hfi1_pportdata *)(dd + 1);
 for (i = 0; i < dd->num_pports; i++, ppd++) {
  kfree(ppd->cntrs);
  kfree(ppd->scntrs);
  free_percpu(ppd->ibport_data.rvp.rc_acks);
  free_percpu(ppd->ibport_data.rvp.rc_qacks);
  free_percpu(ppd->ibport_data.rvp.rc_delayed_comp);
  ppd->cntrs = ((void*)0);
  ppd->scntrs = ((void*)0);
  ppd->ibport_data.rvp.rc_acks = ((void*)0);
  ppd->ibport_data.rvp.rc_qacks = ((void*)0);
  ppd->ibport_data.rvp.rc_delayed_comp = ((void*)0);
 }
 kfree(dd->portcntrnames);
 dd->portcntrnames = ((void*)0);
 kfree(dd->cntrs);
 dd->cntrs = ((void*)0);
 kfree(dd->scntrs);
 dd->scntrs = ((void*)0);
 kfree(dd->cntrnames);
 dd->cntrnames = ((void*)0);
 if (dd->update_cntr_wq) {
  destroy_workqueue(dd->update_cntr_wq);
  dd->update_cntr_wq = ((void*)0);
 }
}
