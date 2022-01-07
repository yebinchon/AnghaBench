
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dw_edma_chip {int dummy; } ;


 int dw_edma_remove (struct dw_edma_chip*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct dw_edma_chip* pci_get_drvdata (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*,int) ;

__attribute__((used)) static void dw_edma_pcie_remove(struct pci_dev *pdev)
{
 struct dw_edma_chip *chip = pci_get_drvdata(pdev);
 int err;


 err = dw_edma_remove(chip);
 if (err)
  pci_warn(pdev, "can't remove device properly: %d\n", err);


 pci_free_irq_vectors(pdev);
}
