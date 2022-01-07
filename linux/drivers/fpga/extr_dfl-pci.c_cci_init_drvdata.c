
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cci_drvdata {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cci_drvdata* devm_kzalloc (int *,int,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct cci_drvdata*) ;

__attribute__((used)) static int cci_init_drvdata(struct pci_dev *pcidev)
{
 struct cci_drvdata *drvdata;

 drvdata = devm_kzalloc(&pcidev->dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 pci_set_drvdata(pcidev, drvdata);

 return 0;
}
