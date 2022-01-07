
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {int node; } ;
struct hfi1_ctxtdata {int flags; scalar_t__ ctxt; int seq_cnt; int sc; int rcvhdrqentsize; } ;


 int BUILD_BUG_ON (int) ;
 int DMA_RTAIL ;
 int ENOMEM ;
 int HFI1_CAP_DMA_RTAIL ;
 int HFI1_CAP_KGET (int ) ;
 scalar_t__ HFI1_CTRL_CTXT ;
 int MULTI_PKT_EGR ;
 int NODROP_EGR_FULL ;
 int NODROP_RHQ_FULL ;
 int SC_ACK ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int hfi1_create_ctxtdata (struct hfi1_pportdata*,int ,struct hfi1_ctxtdata**) ;
 int hfi1_init_ctxt (int ) ;
 int sc_alloc (struct hfi1_devdata*,int ,int ,int ) ;

__attribute__((used)) static int hfi1_create_kctxt(struct hfi1_devdata *dd,
        struct hfi1_pportdata *ppd)
{
 struct hfi1_ctxtdata *rcd;
 int ret;


 BUILD_BUG_ON(HFI1_CTRL_CTXT != 0);

 ret = hfi1_create_ctxtdata(ppd, dd->node, &rcd);
 if (ret < 0) {
  dd_dev_err(dd, "Kernel receive context allocation failed\n");
  return ret;
 }






 rcd->flags = HFI1_CAP_KGET(MULTI_PKT_EGR) |
  HFI1_CAP_KGET(NODROP_RHQ_FULL) |
  HFI1_CAP_KGET(NODROP_EGR_FULL) |
  HFI1_CAP_KGET(DMA_RTAIL);


 if (rcd->ctxt == HFI1_CTRL_CTXT)
  rcd->flags |= HFI1_CAP_DMA_RTAIL;
 rcd->seq_cnt = 1;

 rcd->sc = sc_alloc(dd, SC_ACK, rcd->rcvhdrqentsize, dd->node);
 if (!rcd->sc) {
  dd_dev_err(dd, "Kernel send context allocation failed\n");
  return -ENOMEM;
 }
 hfi1_init_ctxt(rcd->sc);

 return 0;
}
