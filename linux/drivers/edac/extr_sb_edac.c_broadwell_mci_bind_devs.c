
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * pci_vtd; } ;
struct sbridge_pvt {TYPE_1__ info; struct pci_dev* pci_ta; struct pci_dev* pci_ras; struct pci_dev* pci_sad1; struct pci_dev* pci_ha; struct pci_dev* pci_sad0; struct pci_dev* pci_ddrio; struct pci_dev** pci_tad; } ;
struct sbridge_dev {int n_devs; int bus; struct pci_dev** pdev; } ;
struct pci_dev {int device; int devfn; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;


 int ENODEV ;
 int KERN_ERR ;
 int PCI_DEVICE_ID_INTEL_BROADWELL_IMC_VTD_MISC ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int TAD_DEV_TO_CHAN (int) ;
 int edac_dbg (int ,char*,int ,int ,int ,struct pci_dev*) ;
 int * pci_get_device (int ,int ,int *) ;
 int sbridge_printk (int ,char*) ;

__attribute__((used)) static int broadwell_mci_bind_devs(struct mem_ctl_info *mci,
     struct sbridge_dev *sbridge_dev)
{
 struct sbridge_pvt *pvt = mci->pvt_info;
 struct pci_dev *pdev;
 u8 saw_chan_mask = 0;
 int i;


 if (pvt->info.pci_vtd == ((void*)0))

  pvt->info.pci_vtd = pci_get_device(PCI_VENDOR_ID_INTEL,
         PCI_DEVICE_ID_INTEL_BROADWELL_IMC_VTD_MISC,
         ((void*)0));

 for (i = 0; i < sbridge_dev->n_devs; i++) {
  pdev = sbridge_dev->pdev[i];
  if (!pdev)
   continue;

  switch (pdev->device) {
  case 144:
   pvt->pci_sad0 = pdev;
   break;
  case 143:
   pvt->pci_sad1 = pdev;
   break;
  case 141:
  case 134:
   pvt->pci_ha = pdev;
   break;
  case 140:
  case 133:
   pvt->pci_ta = pdev;
   break;
  case 135:
  case 128:
   pvt->pci_ras = pdev;
   break;
  case 139:
  case 138:
  case 137:
  case 136:
  case 132:
  case 131:
  case 130:
  case 129:
  {
   int id = TAD_DEV_TO_CHAN(pdev->device);
   pvt->pci_tad[id] = pdev;
   saw_chan_mask |= 1 << id;
  }
   break;
  case 142:
   pvt->pci_ddrio = pdev;
   break;
  default:
   break;
  }

  edac_dbg(0, "Associated PCI %02x.%02d.%d with dev = %p\n",
    sbridge_dev->bus,
    PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn),
    pdev);
 }


 if (!pvt->pci_sad0 || !pvt->pci_ha || !pvt->pci_sad1 ||
     !pvt->pci_ras || !pvt->pci_ta || !pvt->info.pci_vtd)
  goto enodev;

 if (saw_chan_mask != 0x0f &&
     saw_chan_mask != 0x03)
  goto enodev;
 return 0;

enodev:
 sbridge_printk(KERN_ERR, "Some needed devices are missing\n");
 return -ENODEV;
}
