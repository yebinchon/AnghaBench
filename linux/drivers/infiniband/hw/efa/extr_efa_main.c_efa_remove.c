
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct efa_dev {int dummy; } ;


 int efa_ib_device_remove (struct efa_dev*) ;
 int efa_remove_device (struct pci_dev*) ;
 struct efa_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void efa_remove(struct pci_dev *pdev)
{
 struct efa_dev *dev = pci_get_drvdata(pdev);

 efa_ib_device_remove(dev);
 efa_remove_device(pdev);
}
