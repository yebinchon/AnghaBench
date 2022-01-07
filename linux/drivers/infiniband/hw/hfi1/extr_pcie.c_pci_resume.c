
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int hfi1_init (struct hfi1_devdata*,int) ;
 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
pci_resume(struct pci_dev *pdev)
{
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);

 dd_dev_info(dd, "HFI1 resume function called\n");





 hfi1_init(dd, 1);
}
