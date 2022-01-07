
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; } ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {void** pci_dev_2x_0_fbd_branch; TYPE_1__* pci_dev_16_2_fsb_err_regs; TYPE_1__* pci_dev_16_1_fsb_addr_map; TYPE_1__* pci_dev_16_0_fsb_ctlr; } ;
struct TYPE_2__ {int device; int vendor; } ;


 int ENODEV ;
 int KERN_ERR ;
 int PCI_DEVICE_ID_INTEL_I7300_MCH_ERR ;
 int PCI_DEVICE_ID_INTEL_I7300_MCH_FB0 ;
 int PCI_DEVICE_ID_INTEL_I7300_MCH_FB1 ;
 int PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int edac_dbg (int,char*,int ,int ,int ) ;
 int i7300_printk (int ,char*,int ,int ) ;
 int i7300_put_devices (struct mem_ctl_info*) ;
 void* pci_dev_get (struct pci_dev*) ;
 void* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_name (TYPE_1__*) ;

__attribute__((used)) static int i7300_get_devices(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 struct pci_dev *pdev;

 pvt = mci->pvt_info;


 pdev = ((void*)0);
 while ((pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
          PCI_DEVICE_ID_INTEL_I7300_MCH_ERR,
          pdev))) {

  switch (PCI_FUNC(pdev->devfn)) {
  case 1:
   if (!pvt->pci_dev_16_1_fsb_addr_map)
    pvt->pci_dev_16_1_fsb_addr_map =
       pci_dev_get(pdev);
   break;
  case 2:
   if (!pvt->pci_dev_16_2_fsb_err_regs)
    pvt->pci_dev_16_2_fsb_err_regs =
       pci_dev_get(pdev);
   break;
  }
 }

 if (!pvt->pci_dev_16_1_fsb_addr_map ||
     !pvt->pci_dev_16_2_fsb_err_regs) {

  i7300_printk(KERN_ERR,
   "'system address,Process Bus' device not found:"
   "vendor 0x%x device 0x%x ERR funcs (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_INTEL_I7300_MCH_ERR);
  goto error;
 }

 edac_dbg(1, "System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->pci_dev_16_0_fsb_ctlr),
   pvt->pci_dev_16_0_fsb_ctlr->vendor,
   pvt->pci_dev_16_0_fsb_ctlr->device);
 edac_dbg(1, "Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->pci_dev_16_1_fsb_addr_map),
   pvt->pci_dev_16_1_fsb_addr_map->vendor,
   pvt->pci_dev_16_1_fsb_addr_map->device);
 edac_dbg(1, "FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->pci_dev_16_2_fsb_err_regs),
   pvt->pci_dev_16_2_fsb_err_regs->vendor,
   pvt->pci_dev_16_2_fsb_err_regs->device);

 pvt->pci_dev_2x_0_fbd_branch[0] = pci_get_device(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_I7300_MCH_FB0,
         ((void*)0));
 if (!pvt->pci_dev_2x_0_fbd_branch[0]) {
  i7300_printk(KERN_ERR,
   "MC: 'BRANCH 0' device not found:"
   "vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_I7300_MCH_FB0);
  goto error;
 }

 pvt->pci_dev_2x_0_fbd_branch[1] = pci_get_device(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_I7300_MCH_FB1,
         ((void*)0));
 if (!pvt->pci_dev_2x_0_fbd_branch[1]) {
  i7300_printk(KERN_ERR,
   "MC: 'BRANCH 1' device not found:"
   "vendor 0x%x device 0x%x Func 0 "
   "(broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_INTEL_I7300_MCH_FB1);
  goto error;
 }

 return 0;

error:
 i7300_put_devices(mci);
 return -ENODEV;
}
