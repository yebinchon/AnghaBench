
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int dev; } ;
struct cpt_device {int dummy; } ;


 int cpt_unregister_interrupts (struct cpt_device*) ;
 int dev_info (int *,char*,int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cpt_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void cpt_shutdown(struct pci_dev *pdev)
{
 struct cpt_device *cpt = pci_get_drvdata(pdev);

 if (!cpt)
  return;

 dev_info(&pdev->dev, "Shutdown device %x:%x.\n",
   (u32)pdev->vendor, (u32)pdev->device);

 cpt_unregister_interrupts(cpt);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
