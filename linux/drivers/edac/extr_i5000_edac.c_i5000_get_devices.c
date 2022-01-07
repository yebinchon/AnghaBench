
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int vendor; int devfn; } ;
struct mem_ctl_info {struct i5000_pvt* pvt_info; } ;
struct i5000_pvt {scalar_t__ maxch; struct pci_dev* branch_1; struct pci_dev* branch_0; struct pci_dev* fsb_error_regs; struct pci_dev* branchmap_werrors; struct pci_dev* system_address; } ;


 scalar_t__ CHANNELS_PER_BRANCH ;
 int KERN_ERR ;
 int PCI_DEVICE_ID_I5000_BRANCH_0 ;
 int PCI_DEVICE_ID_I5000_BRANCH_1 ;
 int PCI_DEVICE_ID_INTEL_I5000_DEV16 ;
 int PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int edac_dbg (int,char*,int ,int ,int ) ;
 int i5000_printk (int ,char*,int ,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;

__attribute__((used)) static int i5000_get_devices(struct mem_ctl_info *mci, int dev_idx)
{

 struct i5000_pvt *pvt;
 struct pci_dev *pdev;

 pvt = mci->pvt_info;


 pdev = ((void*)0);
 while (1) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_I5000_DEV16, pdev);


  if (pdev == ((void*)0)) {
   i5000_printk(KERN_ERR,
    "'system address,Process Bus' "
    "device not found:"
    "vendor 0x%x device 0x%x FUNC 1 "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_I5000_DEV16);

   return 1;
  }


  if (PCI_FUNC(pdev->devfn) == 1)
   break;
 }

 pvt->branchmap_werrors = pdev;


 pdev = ((void*)0);
 while (1) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_I5000_DEV16, pdev);

  if (pdev == ((void*)0)) {
   i5000_printk(KERN_ERR,
    "MC: 'branchmap,control,errors' "
    "device not found:"
    "vendor 0x%x device 0x%x Func 2 "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_I5000_DEV16);

   pci_dev_put(pvt->branchmap_werrors);
   return 1;
  }


  if (PCI_FUNC(pdev->devfn) == 2)
   break;
 }

 pvt->fsb_error_regs = pdev;

 edac_dbg(1, "System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->system_address),
   pvt->system_address->vendor, pvt->system_address->device);
 edac_dbg(1, "Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->branchmap_werrors),
   pvt->branchmap_werrors->vendor,
   pvt->branchmap_werrors->device);
 edac_dbg(1, "FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->fsb_error_regs),
   pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

 pdev = ((void*)0);
 pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_I5000_BRANCH_0, pdev);

 if (pdev == ((void*)0)) {
  i5000_printk(KERN_ERR,
   "MC: 'BRANCH 0' device not found:"
   "vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_I5000_BRANCH_0);

  pci_dev_put(pvt->branchmap_werrors);
  pci_dev_put(pvt->fsb_error_regs);
  return 1;
 }

 pvt->branch_0 = pdev;




 if (pvt->maxch >= CHANNELS_PER_BRANCH) {
  pdev = ((void*)0);
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_I5000_BRANCH_1, pdev);

  if (pdev == ((void*)0)) {
   i5000_printk(KERN_ERR,
    "MC: 'BRANCH 1' device not found:"
    "vendor 0x%x device 0x%x Func 0 "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_I5000_BRANCH_1);

   pci_dev_put(pvt->branchmap_werrors);
   pci_dev_put(pvt->fsb_error_regs);
   pci_dev_put(pvt->branch_0);
   return 1;
  }

  pvt->branch_1 = pdev;
 }

 return 0;
}
