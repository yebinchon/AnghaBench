
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_vnic_vport_info {struct hfi1_devdata* dd; } ;
struct TYPE_2__ {scalar_t__ num_vports; int num_ctxt; int ** ctxt; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int deallocate_vnic_ctxt (struct hfi1_devdata*,int *) ;
 int hfi1_deinit_vnic_rsm (struct hfi1_devdata*) ;
 int hfi1_mutex ;
 int hfi1_rcd_put (int *) ;
 int hfi1_vnic_txreq_deinit (struct hfi1_devdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hfi1_vnic_deinit(struct hfi1_vnic_vport_info *vinfo)
{
 struct hfi1_devdata *dd = vinfo->dd;
 int i;

 mutex_lock(&hfi1_mutex);
 if (--dd->vnic.num_vports == 0) {
  for (i = 0; i < dd->vnic.num_ctxt; i++) {
   deallocate_vnic_ctxt(dd, dd->vnic.ctxt[i]);
   hfi1_rcd_put(dd->vnic.ctxt[i]);
   dd->vnic.ctxt[i] = ((void*)0);
  }
  hfi1_deinit_vnic_rsm(dd);
  dd->vnic.num_ctxt = 0;
  hfi1_vnic_txreq_deinit(dd);
 }
 mutex_unlock(&hfi1_mutex);
}
