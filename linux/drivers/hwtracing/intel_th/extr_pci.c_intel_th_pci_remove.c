
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_th {int dummy; } ;


 int intel_th_free (struct intel_th*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct intel_th* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void intel_th_pci_remove(struct pci_dev *pdev)
{
 struct intel_th *th = pci_get_drvdata(pdev);

 intel_th_free(th);

 pci_free_irq_vectors(pdev);
}
