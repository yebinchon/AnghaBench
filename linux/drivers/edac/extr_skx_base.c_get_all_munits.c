
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skx_dev {int mcroute; struct pci_dev* util_all; struct pci_dev* sad_all; TYPE_2__* imc; } ;
struct pci_dev {scalar_t__ devfn; int bus; } ;
struct munit {int per_socket; scalar_t__* devfn; int mtype; int did; int busidx; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {struct pci_dev* cdev; } ;





 int ENODEV ;
 int KERN_ERR ;
 int PCI_VENDOR_ID_INTEL ;


 int SKX_NUM_IMC ;

 struct skx_dev* get_skx_dev (int ,int ) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int skx_printk (int ,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_all_munits(const struct munit *m)
{
 struct pci_dev *pdev, *prev;
 struct skx_dev *d;
 u32 reg;
 int i = 0, ndev = 0;

 prev = ((void*)0);
 for (;;) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL, m->did, prev);
  if (!pdev)
   break;
  ndev++;
  if (m->per_socket == SKX_NUM_IMC) {
   for (i = 0; i < SKX_NUM_IMC; i++)
    if (m->devfn[i] == pdev->devfn)
     break;
   if (i == SKX_NUM_IMC)
    goto fail;
  }
  d = get_skx_dev(pdev->bus, m->busidx);
  if (!d)
   goto fail;


  if (unlikely(pci_enable_device(pdev) < 0)) {
   skx_printk(KERN_ERR, "Couldn't enable device %04x:%04x\n",
       PCI_VENDOR_ID_INTEL, m->did);
   goto fail;
  }

  switch (m->mtype) {
  case 133: case 132: case 131:
   pci_dev_get(pdev);
   d->imc[i].chan[m->mtype].cdev = pdev;
   break;
  case 129:
   pci_dev_get(pdev);
   d->sad_all = pdev;
   break;
  case 128:
   pci_dev_get(pdev);
   d->util_all = pdev;
   break;
  case 130:






   pci_read_config_dword(pdev, 0xB4, &reg);
   if (reg != 0) {
    if (d->mcroute == 0) {
     d->mcroute = reg;
    } else if (d->mcroute != reg) {
     skx_printk(KERN_ERR, "mcroute mismatch\n");
     goto fail;
    }
   }
   ndev--;
   break;
  }

  prev = pdev;
 }

 return ndev;
fail:
 pci_dev_put(pdev);
 return -ENODEV;
}
