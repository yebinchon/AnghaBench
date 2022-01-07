
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void nitrox_shutdown(struct pci_dev *pdev)
{
 pci_set_drvdata(pdev, ((void*)0));
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
