
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cci_drvdata {int cdev; } ;


 int dfl_fpga_feature_devs_remove (int ) ;
 struct cci_drvdata* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void cci_remove_feature_devs(struct pci_dev *pcidev)
{
 struct cci_drvdata *drvdata = pci_get_drvdata(pcidev);


 dfl_fpga_feature_devs_remove(drvdata->cdev);
}
