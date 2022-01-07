
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct efa_dev {struct pci_dev* pdev; } ;


 int IORESOURCE_MEM ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 int pci_select_bars (struct pci_dev*,int ) ;

__attribute__((used)) static void efa_release_bars(struct efa_dev *dev, int bars_mask)
{
 struct pci_dev *pdev = dev->pdev;
 int release_bars;

 release_bars = pci_select_bars(pdev, IORESOURCE_MEM) & bars_mask;
 pci_release_selected_regions(pdev, release_bars);
}
