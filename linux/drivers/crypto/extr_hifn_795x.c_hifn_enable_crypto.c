
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hifn_device {TYPE_1__* pdev; int name; } ;
struct TYPE_5__ {scalar_t__ pci_vendor; scalar_t__ pci_prod; char* card_id; } ;
struct TYPE_4__ {scalar_t__ vendor; scalar_t__ device; int dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 int HIFN_1_DMA_CNFG ;
 int HIFN_1_UNLOCK_SECRET1 ;
 int HIFN_1_UNLOCK_SECRET2 ;
 int HIFN_DMACNFG_DMARESET ;
 int HIFN_DMACNFG_MODE ;
 int HIFN_DMACNFG_MSTRESET ;
 int HIFN_DMACNFG_UNLOCK ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*) ;
 int hifn_next_signature (int,char) ;
 int hifn_read_1 (struct hifn_device*,int ) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;
 int mdelay (int) ;
 TYPE_2__* pci2id ;
 int pci_name (TYPE_1__*) ;

__attribute__((used)) static int hifn_enable_crypto(struct hifn_device *dev)
{
 u32 dmacfg, addr;
 char *offtbl = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(pci2id); i++) {
  if (pci2id[i].pci_vendor == dev->pdev->vendor &&
    pci2id[i].pci_prod == dev->pdev->device) {
   offtbl = pci2id[i].card_id;
   break;
  }
 }

 if (!offtbl) {
  dev_err(&dev->pdev->dev, "Unknown card!\n");
  return -ENODEV;
 }

 dmacfg = hifn_read_1(dev, HIFN_1_DMA_CNFG);

 hifn_write_1(dev, HIFN_1_DMA_CNFG,
   HIFN_DMACNFG_UNLOCK | HIFN_DMACNFG_MSTRESET |
   HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
 mdelay(1);
 addr = hifn_read_1(dev, HIFN_1_UNLOCK_SECRET1);
 mdelay(1);
 hifn_write_1(dev, HIFN_1_UNLOCK_SECRET2, 0);
 mdelay(1);

 for (i = 0; i < 12; ++i) {
  addr = hifn_next_signature(addr, offtbl[i] + 0x101);
  hifn_write_1(dev, HIFN_1_UNLOCK_SECRET2, addr);

  mdelay(1);
 }
 hifn_write_1(dev, HIFN_1_DMA_CNFG, dmacfg);

 dev_dbg(&dev->pdev->dev, "%s %s.\n", dev->name, pci_name(dev->pdev));

 return 0;
}
