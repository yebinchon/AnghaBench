
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;
 int shutdown_device (struct hfi1_devdata*) ;

__attribute__((used)) static void shutdown_one(struct pci_dev *pdev)
{
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);

 shutdown_device(dd);
}
