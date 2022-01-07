
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct qib_devdata* pci_get_drvdata (struct pci_dev*) ;
 int qib_shutdown_device (struct qib_devdata*) ;

__attribute__((used)) static void qib_shutdown_one(struct pci_dev *pdev)
{
 struct qib_devdata *dd = pci_get_drvdata(pdev);

 qib_shutdown_device(dd);
}
