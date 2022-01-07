
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pci_dev** pci_cha; struct pci_dev** pci_channel; struct pci_dev* pci_mc1; struct pci_dev* pci_mc0; struct pci_dev* pci_mc_info; } ;
struct sbridge_pvt {TYPE_1__ knl; struct pci_dev* pci_ta; struct pci_dev* pci_sad1; struct pci_dev* pci_sad0; } ;
struct sbridge_dev {int n_devs; struct pci_dev** pdev; } ;
struct pci_dev {int devfn; int device; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;


 int ENODEV ;
 int KERN_ERR ;
 int KNL_MAX_CHANNELS ;
 int KNL_MAX_CHAS ;







 int WARN_ON (int ) ;
 int sbridge_printk (int ,char*,...) ;

__attribute__((used)) static int knl_mci_bind_devs(struct mem_ctl_info *mci,
   struct sbridge_dev *sbridge_dev)
{
 struct sbridge_pvt *pvt = mci->pvt_info;
 struct pci_dev *pdev;
 int dev, func;

 int i;
 int devidx;

 for (i = 0; i < sbridge_dev->n_devs; i++) {
  pdev = sbridge_dev->pdev[i];
  if (!pdev)
   continue;


  dev = (pdev->devfn >> 3) & 0x1f;
  func = pdev->devfn & 0x7;

  switch (pdev->device) {
  case 132:
   if (dev == 8)
    pvt->knl.pci_mc0 = pdev;
   else if (dev == 9)
    pvt->knl.pci_mc1 = pdev;
   else {
    sbridge_printk(KERN_ERR,
     "Memory controller in unexpected place! (dev %d, fn %d)\n",
     dev, func);
    continue;
   }
   break;

  case 131:
   pvt->pci_sad0 = pdev;
   break;

  case 130:
   pvt->pci_sad1 = pdev;
   break;

  case 134:



   devidx = ((dev-14)*8)+func;

   if (devidx < 0 || devidx >= KNL_MAX_CHAS) {
    sbridge_printk(KERN_ERR,
     "Caching and Home Agent in unexpected place! (dev %d, fn %d)\n",
     dev, func);
    continue;
   }

   WARN_ON(pvt->knl.pci_cha[devidx] != ((void*)0));

   pvt->knl.pci_cha[devidx] = pdev;
   break;

  case 133:
   devidx = -1;






   if (dev == 9)
    devidx = func-2;
   else if (dev == 8)
    devidx = 3 + (func-2);

   if (devidx < 0 || devidx >= KNL_MAX_CHANNELS) {
    sbridge_printk(KERN_ERR,
     "DRAM Channel Registers in unexpected place! (dev %d, fn %d)\n",
     dev, func);
    continue;
   }

   WARN_ON(pvt->knl.pci_channel[devidx] != ((void*)0));
   pvt->knl.pci_channel[devidx] = pdev;
   break;

  case 128:
   pvt->knl.pci_mc_info = pdev;
   break;

  case 129:
   pvt->pci_ta = pdev;
   break;

  default:
   sbridge_printk(KERN_ERR, "Unexpected device %d\n",
    pdev->device);
   break;
  }
 }

 if (!pvt->knl.pci_mc0 || !pvt->knl.pci_mc1 ||
     !pvt->pci_sad0 || !pvt->pci_sad1 ||
     !pvt->pci_ta) {
  goto enodev;
 }

 for (i = 0; i < KNL_MAX_CHANNELS; i++) {
  if (!pvt->knl.pci_channel[i]) {
   sbridge_printk(KERN_ERR, "Missing channel %d\n", i);
   goto enodev;
  }
 }

 for (i = 0; i < KNL_MAX_CHAS; i++) {
  if (!pvt->knl.pci_cha[i]) {
   sbridge_printk(KERN_ERR, "Missing CHA %d\n", i);
   goto enodev;
  }
 }

 return 0;

enodev:
 sbridge_printk(KERN_ERR, "Some needed devices are missing\n");
 return -ENODEV;
}
