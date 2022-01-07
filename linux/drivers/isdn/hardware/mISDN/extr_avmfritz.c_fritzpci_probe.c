
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {scalar_t__ device; int irq; } ;
struct fritzcard {int irq; int addr; struct pci_dev* pdev; int type; } ;


 int AVM_FRITZ_PCI ;
 int AVM_FRITZ_PCIV2 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCI_DEVICE_ID_AVM_A1_V2 ;
 int kfree (struct fritzcard*) ;
 struct fritzcard* kzalloc (int,int ) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct fritzcard*) ;
 int pr_info (char*) ;
 int pr_notice (char*,char*,int ) ;
 int setup_instance (struct fritzcard*) ;

__attribute__((used)) static int
fritzpci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err = -ENOMEM;
 struct fritzcard *card;

 card = kzalloc(sizeof(struct fritzcard), GFP_KERNEL);
 if (!card) {
  pr_info("No kmem for fritzcard\n");
  return err;
 }
 if (pdev->device == PCI_DEVICE_ID_AVM_A1_V2)
  card->type = AVM_FRITZ_PCIV2;
 else
  card->type = AVM_FRITZ_PCI;
 card->pdev = pdev;
 err = pci_enable_device(pdev);
 if (err) {
  kfree(card);
  return err;
 }

 pr_notice("mISDN: found adapter %s at %s\n",
    (char *) ent->driver_data, pci_name(pdev));

 card->addr = pci_resource_start(pdev, 1);
 card->irq = pdev->irq;
 pci_set_drvdata(pdev, card);
 err = setup_instance(card);
 if (err)
  pci_set_drvdata(pdev, ((void*)0));
 return err;
}
