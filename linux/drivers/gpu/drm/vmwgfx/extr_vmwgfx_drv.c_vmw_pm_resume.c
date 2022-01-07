
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 struct pci_dev* to_pci_dev (struct device*) ;
 int vmw_pci_resume (struct pci_dev*) ;

__attribute__((used)) static int vmw_pm_resume(struct device *kdev)
{
 struct pci_dev *pdev = to_pci_dev(kdev);

 return vmw_pci_resume(pdev);
}
