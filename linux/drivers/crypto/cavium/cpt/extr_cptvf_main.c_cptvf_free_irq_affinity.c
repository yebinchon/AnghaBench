
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_vf {int * affinity_mask; int pdev; } ;


 int free_cpumask_var (int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void cptvf_free_irq_affinity(struct cpt_vf *cptvf, int vec)
{
 irq_set_affinity_hint(pci_irq_vector(cptvf->pdev, vec), ((void*)0));
 free_cpumask_var(cptvf->affinity_mask[vec]);
}
