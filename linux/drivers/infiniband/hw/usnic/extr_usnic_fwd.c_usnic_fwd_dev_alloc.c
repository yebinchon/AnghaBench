
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_fwd_dev {TYPE_1__* netdev; int name; int lock; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 struct usnic_fwd_dev* kzalloc (int,int ) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,int ) ;

struct usnic_fwd_dev *usnic_fwd_dev_alloc(struct pci_dev *pdev)
{
 struct usnic_fwd_dev *ufdev;

 ufdev = kzalloc(sizeof(*ufdev), GFP_KERNEL);
 if (!ufdev)
  return ((void*)0);

 ufdev->pdev = pdev;
 ufdev->netdev = pci_get_drvdata(pdev);
 spin_lock_init(&ufdev->lock);
 BUILD_BUG_ON(sizeof(ufdev->name) != sizeof(ufdev->netdev->name));
 strcpy(ufdev->name, ufdev->netdev->name);

 return ufdev;
}
