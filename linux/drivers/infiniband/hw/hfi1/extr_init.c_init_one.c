
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int device; } ;
struct pci_dev {int dev; } ;
struct hfi1_pportdata {int * link_wq; int * hfi1_wq; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; int verbs_dev; int flags; } ;


 int EINVAL ;
 int ENODEV ;
 int HFI1_CAP_LOCK () ;
 int HFI1_INITTED ;
 scalar_t__ IS_ERR (struct hfi1_devdata*) ;
 int MAX_EAGER_BUFFER_TOTAL ;
 int MIN_EAGER_BUFFER ;
 int NUM_IB_PORTS ;
 int PCI_DEVICE_ID_INTEL0 ;
 int PCI_DEVICE_ID_INTEL1 ;
 int PTR_ERR (struct hfi1_devdata*) ;
 scalar_t__ clamp_val (scalar_t__,int,int) ;
 int create_workqueues (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 int dd_dev_info (struct hfi1_devdata*,char*,scalar_t__) ;
 int destroy_workqueue (int *) ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ eager_buffer_size ;
 int encode_rcv_header_entry_size (int) ;
 int flush_workqueue (int ) ;
 struct hfi1_devdata* hfi1_alloc_devdata (struct pci_dev*,int) ;
 int hfi1_dbg_ibdev_init (int *) ;
 int hfi1_device_create (struct hfi1_devdata*) ;
 int hfi1_device_remove (struct hfi1_devdata*) ;
 int hfi1_hdrq_entsize ;
 int hfi1_init (struct hfi1_devdata*,int ) ;
 int hfi1_init_dd (struct hfi1_devdata*) ;
 int hfi1_pcie_cleanup (struct pci_dev*) ;
 int hfi1_pcie_init (struct hfi1_devdata*) ;
 int hfi1_quiet_serdes (struct hfi1_pportdata*) ;
 scalar_t__ hfi1_rcvarr_split ;
 int hfi1_register_ib_device (struct hfi1_devdata*) ;
 int hfi1_unregister_ib_device (struct hfi1_devdata*) ;
 int hfi1_vnic_cleanup (struct hfi1_devdata*) ;
 int hfi1_vnic_setup (struct hfi1_devdata*) ;
 int ib_wq ;
 int init_validate_rcvhdrcnt (struct hfi1_devdata*,int ) ;
 int is_power_of_2 (scalar_t__) ;
 int msix_clean_up_interrupts (struct hfi1_devdata*) ;
 int postinit_cleanup (struct hfi1_devdata*) ;
 int rcvhdrcnt ;
 scalar_t__ roundup_pow_of_two (scalar_t__) ;
 int sdma_start (struct hfi1_devdata*) ;
 int stop_timers (struct hfi1_devdata*) ;

__attribute__((used)) static int init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int ret = 0, j, pidx, initfail;
 struct hfi1_devdata *dd;
 struct hfi1_pportdata *ppd;


 HFI1_CAP_LOCK();


 if (!(ent->device == PCI_DEVICE_ID_INTEL0 ||
       ent->device == PCI_DEVICE_ID_INTEL1)) {
  dev_err(&pdev->dev, "Failing on unknown Intel deviceid 0x%x\n",
   ent->device);
  ret = -ENODEV;
  goto bail;
 }


 dd = hfi1_alloc_devdata(pdev, NUM_IB_PORTS *
    sizeof(struct hfi1_pportdata));
 if (IS_ERR(dd)) {
  ret = PTR_ERR(dd);
  goto bail;
 }


 ret = init_validate_rcvhdrcnt(dd, rcvhdrcnt);
 if (ret)
  goto bail;


 if (!encode_rcv_header_entry_size(hfi1_hdrq_entsize)) {
  dd_dev_err(dd, "Invalid HdrQ Entry size %u\n",
      hfi1_hdrq_entsize);
  ret = -EINVAL;
  goto bail;
 }
 if (eager_buffer_size) {
  if (!is_power_of_2(eager_buffer_size))
   eager_buffer_size =
    roundup_pow_of_two(eager_buffer_size);
  eager_buffer_size =
   clamp_val(eager_buffer_size,
      MIN_EAGER_BUFFER * 8,
      MAX_EAGER_BUFFER_TOTAL);
  dd_dev_info(dd, "Eager buffer size %u\n",
       eager_buffer_size);
 } else {
  dd_dev_err(dd, "Invalid Eager buffer size of 0\n");
  ret = -EINVAL;
  goto bail;
 }


 hfi1_rcvarr_split = clamp_val(hfi1_rcvarr_split, 0, 100);

 ret = hfi1_pcie_init(dd);
 if (ret)
  goto bail;





 ret = hfi1_init_dd(dd);
 if (ret)
  goto clean_bail;

 ret = create_workqueues(dd);
 if (ret)
  goto clean_bail;


 initfail = hfi1_init(dd, 0);


 hfi1_vnic_setup(dd);

 ret = hfi1_register_ib_device(dd);







 if (!initfail && !ret) {
  dd->flags |= HFI1_INITTED;

  hfi1_dbg_ibdev_init(&dd->verbs_dev);
 }

 j = hfi1_device_create(dd);
 if (j)
  dd_dev_err(dd, "Failed to create /dev devices: %d\n", -j);

 if (initfail || ret) {
  msix_clean_up_interrupts(dd);
  stop_timers(dd);
  flush_workqueue(ib_wq);
  for (pidx = 0; pidx < dd->num_pports; ++pidx) {
   hfi1_quiet_serdes(dd->pport + pidx);
   ppd = dd->pport + pidx;
   if (ppd->hfi1_wq) {
    destroy_workqueue(ppd->hfi1_wq);
    ppd->hfi1_wq = ((void*)0);
   }
   if (ppd->link_wq) {
    destroy_workqueue(ppd->link_wq);
    ppd->link_wq = ((void*)0);
   }
  }
  if (!j)
   hfi1_device_remove(dd);
  if (!ret)
   hfi1_unregister_ib_device(dd);
  hfi1_vnic_cleanup(dd);
  postinit_cleanup(dd);
  if (initfail)
   ret = initfail;
  goto bail;
 }

 sdma_start(dd);

 return 0;

clean_bail:
 hfi1_pcie_cleanup(pdev);
bail:
 return ret;
}
