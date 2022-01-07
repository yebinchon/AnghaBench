
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mthca_dev {int hca_type; } ;


 int ENODEV ;
 int __mthca_init_one (struct pci_dev*,int) ;
 int __mthca_remove_one (struct pci_dev*) ;
 struct mthca_dev* pci_get_drvdata (struct pci_dev*) ;

int __mthca_restart_one(struct pci_dev *pdev)
{
 struct mthca_dev *mdev;
 int hca_type;

 mdev = pci_get_drvdata(pdev);
 if (!mdev)
  return -ENODEV;
 hca_type = mdev->hca_type;
 __mthca_remove_one(pdev);
 return __mthca_init_one(pdev, hca_type);
}
