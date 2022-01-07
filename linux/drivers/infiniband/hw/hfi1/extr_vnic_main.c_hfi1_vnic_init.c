
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hfi1_vnic_vport_info {int num_rx_q; struct hfi1_devdata* dd; } ;
struct TYPE_6__ {int num_ctxt; int num_vports; TYPE_2__** ctxt; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;
struct TYPE_7__ {int vnic_q_idx; } ;


 int deallocate_vnic_ctxt (struct hfi1_devdata*,TYPE_2__*) ;
 int hfi1_init_vnic_rsm (struct hfi1_devdata*) ;
 int hfi1_mutex ;
 int hfi1_rcd_get (TYPE_2__*) ;
 int hfi1_rcd_put (TYPE_2__*) ;
 int hfi1_vnic_allot_ctxt (struct hfi1_devdata*,TYPE_2__**) ;
 int hfi1_vnic_sdma_init (struct hfi1_vnic_vport_info*) ;
 int hfi1_vnic_txreq_deinit (struct hfi1_devdata*) ;
 int hfi1_vnic_txreq_init (struct hfi1_devdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hfi1_vnic_init(struct hfi1_vnic_vport_info *vinfo)
{
 struct hfi1_devdata *dd = vinfo->dd;
 int i, rc = 0;

 mutex_lock(&hfi1_mutex);
 if (!dd->vnic.num_vports) {
  rc = hfi1_vnic_txreq_init(dd);
  if (rc)
   goto txreq_fail;
 }

 for (i = dd->vnic.num_ctxt; i < vinfo->num_rx_q; i++) {
  rc = hfi1_vnic_allot_ctxt(dd, &dd->vnic.ctxt[i]);
  if (rc)
   break;
  hfi1_rcd_get(dd->vnic.ctxt[i]);
  dd->vnic.ctxt[i]->vnic_q_idx = i;
 }

 if (i < vinfo->num_rx_q) {





  while (i-- > dd->vnic.num_ctxt) {
   deallocate_vnic_ctxt(dd, dd->vnic.ctxt[i]);
   hfi1_rcd_put(dd->vnic.ctxt[i]);
   dd->vnic.ctxt[i] = ((void*)0);
  }
  goto alloc_fail;
 }

 if (dd->vnic.num_ctxt != i) {
  dd->vnic.num_ctxt = i;
  hfi1_init_vnic_rsm(dd);
 }

 dd->vnic.num_vports++;
 hfi1_vnic_sdma_init(vinfo);
alloc_fail:
 if (!dd->vnic.num_vports)
  hfi1_vnic_txreq_deinit(dd);
txreq_fail:
 mutex_unlock(&hfi1_mutex);
 return rc;
}
