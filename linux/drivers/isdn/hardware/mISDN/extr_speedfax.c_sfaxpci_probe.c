
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfax_hw {int irq; int cfg; struct pci_dev* pdev; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct sfax_hw*) ;
 struct sfax_hw* kzalloc (int,int ) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct sfax_hw*) ;
 int pr_info (char*) ;
 int pr_notice (char*,char*,int ) ;
 int setup_instance (struct sfax_hw*) ;

__attribute__((used)) static int
sfaxpci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err = -ENOMEM;
 struct sfax_hw *card = kzalloc(sizeof(struct sfax_hw), GFP_KERNEL);

 if (!card) {
  pr_info("No memory for Speedfax+ PCI\n");
  return err;
 }
 card->pdev = pdev;
 err = pci_enable_device(pdev);
 if (err) {
  kfree(card);
  return err;
 }

 pr_notice("mISDN: Speedfax found adapter %s at %s\n",
    (char *)ent->driver_data, pci_name(pdev));

 card->cfg = pci_resource_start(pdev, 0);
 card->irq = pdev->irq;
 pci_set_drvdata(pdev, card);
 err = setup_instance(card);
 if (err)
  pci_set_drvdata(pdev, ((void*)0));
 return err;
}
