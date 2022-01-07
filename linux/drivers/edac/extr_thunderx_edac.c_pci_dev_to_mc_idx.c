
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; int dev; } ;


 int PCI_FUNC (int ) ;
 int dev_to_node (int *) ;
 int max (int,int ) ;

__attribute__((used)) static inline int pci_dev_to_mc_idx(struct pci_dev *pdev)
{
 int node = dev_to_node(&pdev->dev);
 int ret = PCI_FUNC(pdev->devfn);

 ret += max(node, 0) << 3;

 return ret;
}
