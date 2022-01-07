
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int cptvf_remove (struct pci_dev*) ;

__attribute__((used)) static void cptvf_shutdown(struct pci_dev *pdev)
{
 cptvf_remove(pdev);
}
