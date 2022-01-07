
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_device {int pdev; } ;


 int CPT_PF_INT_VEC_E_MBOXX (int ) ;
 int free_irq (int ,struct cpt_device*) ;
 int pci_disable_msix (int ) ;
 int pci_irq_vector (int ,int ) ;

__attribute__((used)) static void cpt_unregister_interrupts(struct cpt_device *cpt)
{
 free_irq(pci_irq_vector(cpt->pdev, CPT_PF_INT_VEC_E_MBOXX(0)), cpt);
 pci_disable_msix(cpt->pdev);
}
