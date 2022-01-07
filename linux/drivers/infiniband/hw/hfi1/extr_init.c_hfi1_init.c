
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct hfi1_pportdata {int* statusp; int link_speed_enabled; int port; scalar_t__ linkup; } ;
struct hfi1_devdata {int do_drop; int num_pports; scalar_t__ first_dyn_alloc_ctxt; struct hfi1_pportdata* pport; TYPE_2__* status; void* events; scalar_t__ rcd; int rcvhdrtail_dummy_kvaddr; int rcvhdrtail_dummy_dma; TYPE_1__* pcidev; int drop_packet; int process_vnic_dma_send; int pio_inline_send; int process_dma_send; int process_pio_send; } ;
struct hfi1_ctxtdata {int * do_interrupt; } ;
struct TYPE_4__ {int port; int dev; } ;
struct TYPE_3__ {int dev; } ;


 int DROP_PACKET_OFF ;
 int DROP_PACKET_ON ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HFI1_MAX_SHARED_CTXTS ;
 int HFI1_STATUS_CHIP_PRESENT ;
 int HFI1_STATUS_INITTED ;
 unsigned long PAGE_ALIGN (int) ;
 unsigned long PAGE_SIZE ;
 int atomic_set (int *,int ) ;
 int bringup_serdes (struct hfi1_pportdata*) ;
 int chip_rcv_contexts (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int enable_chip (struct hfi1_devdata*) ;
 int enable_general_intr (struct hfi1_devdata*) ;
 int handle_receive_interrupt ;
 int hfi1_create_rcvhdrq (struct hfi1_devdata*,struct hfi1_ctxtdata*) ;
 int hfi1_kern_exp_rcv_init (struct hfi1_ctxtdata*,int) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_setup_eagerbufs (struct hfi1_ctxtdata*) ;
 int hfi1_verbs_send_dma ;
 int hfi1_verbs_send_pio ;
 int hfi1_vnic_send_dma ;
 int init_after_reset (struct hfi1_devdata*) ;
 int init_qsfp_int (struct hfi1_devdata*) ;
 scalar_t__ is_ax (struct hfi1_devdata*) ;
 int loadtime_init (struct hfi1_devdata*) ;
 int pio_copy ;
 int set_mtu (struct hfi1_pportdata*) ;
 void* vmalloc_user (unsigned long) ;

int hfi1_init(struct hfi1_devdata *dd, int reinit)
{
 int ret = 0, pidx, lastfail = 0;
 unsigned long len;
 u16 i;
 struct hfi1_ctxtdata *rcd;
 struct hfi1_pportdata *ppd;


 dd->process_pio_send = hfi1_verbs_send_pio;
 dd->process_dma_send = hfi1_verbs_send_dma;
 dd->pio_inline_send = pio_copy;
 dd->process_vnic_dma_send = hfi1_vnic_send_dma;

 if (is_ax(dd)) {
  atomic_set(&dd->drop_packet, DROP_PACKET_ON);
  dd->do_drop = 1;
 } else {
  atomic_set(&dd->drop_packet, DROP_PACKET_OFF);
  dd->do_drop = 0;
 }


 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  ppd->linkup = 0;
 }

 if (reinit)
  ret = init_after_reset(dd);
 else
  ret = loadtime_init(dd);
 if (ret)
  goto done;


 dd->rcvhdrtail_dummy_kvaddr = dma_alloc_coherent(&dd->pcidev->dev,
        sizeof(u64),
        &dd->rcvhdrtail_dummy_dma,
        GFP_KERNEL);

 if (!dd->rcvhdrtail_dummy_kvaddr) {
  dd_dev_err(dd, "cannot allocate dummy tail memory\n");
  ret = -ENOMEM;
  goto done;
 }


 for (i = 0; dd->rcd && i < dd->first_dyn_alloc_ctxt; ++i) {






  rcd = hfi1_rcd_get_by_index(dd, i);
  if (!rcd)
   continue;

  rcd->do_interrupt = &handle_receive_interrupt;

  lastfail = hfi1_create_rcvhdrq(dd, rcd);
  if (!lastfail)
   lastfail = hfi1_setup_eagerbufs(rcd);
  if (!lastfail)
   lastfail = hfi1_kern_exp_rcv_init(rcd, reinit);
  if (lastfail) {
   dd_dev_err(dd,
       "failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
   ret = lastfail;
  }

  hfi1_rcd_put(rcd);
 }


 len = PAGE_ALIGN(chip_rcv_contexts(dd) * HFI1_MAX_SHARED_CTXTS *
    sizeof(*dd->events));
 dd->events = vmalloc_user(len);
 if (!dd->events)
  dd_dev_err(dd, "Failed to allocate user events page\n");




 dd->status = vmalloc_user(PAGE_SIZE);
 if (!dd->status)
  dd_dev_err(dd, "Failed to allocate dev status page\n");
 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  if (dd->status)

   ppd->statusp = &dd->status->port;

  set_mtu(ppd);
 }


 enable_chip(dd);

done:




 if (dd->status)
  dd->status->dev |= HFI1_STATUS_CHIP_PRESENT |
   HFI1_STATUS_INITTED;
 if (!ret) {

  enable_general_intr(dd);
  init_qsfp_int(dd);


  for (pidx = 0; pidx < dd->num_pports; ++pidx) {
   ppd = dd->pport + pidx;





   lastfail = bringup_serdes(ppd);
   if (lastfail)
    dd_dev_info(dd,
         "Failed to bring up port %u\n",
         ppd->port);





   if (ppd->statusp)
    *ppd->statusp |= HFI1_STATUS_CHIP_PRESENT |
       HFI1_STATUS_INITTED;
   if (!ppd->link_speed_enabled)
    continue;
  }
 }


 return ret;
}
