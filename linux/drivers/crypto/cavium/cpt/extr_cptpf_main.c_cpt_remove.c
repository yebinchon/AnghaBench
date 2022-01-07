
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cpt_device {int dummy; } ;


 int cpt_disable_all_cores (struct cpt_device*) ;
 int cpt_unload_microcode (struct cpt_device*) ;
 int cpt_unregister_interrupts (struct cpt_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct cpt_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void cpt_remove(struct pci_dev *pdev)
{
 struct cpt_device *cpt = pci_get_drvdata(pdev);


 cpt_disable_all_cores(cpt);

 cpt_unload_microcode(cpt);
 cpt_unregister_interrupts(cpt);
 pci_disable_sriov(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
