
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hsu_dma_chip {int irq; } ;


 int free_irq (int ,struct hsu_dma_chip*) ;
 int hsu_dma_remove (struct hsu_dma_chip*) ;
 struct hsu_dma_chip* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void hsu_pci_remove(struct pci_dev *pdev)
{
 struct hsu_dma_chip *chip = pci_get_drvdata(pdev);

 free_irq(chip->irq, chip);
 hsu_dma_remove(chip);
}
