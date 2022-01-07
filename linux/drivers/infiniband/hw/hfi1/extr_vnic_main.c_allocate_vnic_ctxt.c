
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_devdata {int flags; int node; int pport; } ;
struct hfi1_ctxtdata {int flags; int seq_cnt; int is_vnic; int ctxt; } ;
struct TYPE_2__ {int sps_ctxts; } ;


 int DMA_RTAIL ;
 int EIO ;
 int ENOMEM ;
 int HFI1_CAP_KGET (int ) ;
 int HFI1_FROZEN ;
 int MULTI_PKT_EGR ;
 int NODROP_EGR_FULL ;
 int NODROP_RHQ_FULL ;
 int dd_dev_dbg (struct hfi1_devdata*,char*,int ) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int hfi1_create_ctxtdata (int ,int ,struct hfi1_ctxtdata**) ;
 TYPE_1__ hfi1_stats ;
 int msix_request_rcd_irq (struct hfi1_ctxtdata*) ;

__attribute__((used)) static int allocate_vnic_ctxt(struct hfi1_devdata *dd,
         struct hfi1_ctxtdata **vnic_ctxt)
{
 struct hfi1_ctxtdata *uctxt;
 int ret;

 if (dd->flags & HFI1_FROZEN)
  return -EIO;

 ret = hfi1_create_ctxtdata(dd->pport, dd->node, &uctxt);
 if (ret < 0) {
  dd_dev_err(dd, "Unable to create ctxtdata, failing open\n");
  return -ENOMEM;
 }

 uctxt->flags = HFI1_CAP_KGET(MULTI_PKT_EGR) |
   HFI1_CAP_KGET(NODROP_RHQ_FULL) |
   HFI1_CAP_KGET(NODROP_EGR_FULL) |
   HFI1_CAP_KGET(DMA_RTAIL);
 uctxt->seq_cnt = 1;
 uctxt->is_vnic = 1;

 msix_request_rcd_irq(uctxt);

 hfi1_stats.sps_ctxts++;
 dd_dev_dbg(dd, "created vnic context %d\n", uctxt->ctxt);
 *vnic_ctxt = uctxt;

 return 0;
}
