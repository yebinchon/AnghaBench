
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpt_vf {int vfid; int * affinity_mask; int node; struct pci_dev* pdev; } ;


 int GFP_KERNEL ;
 int cpumask_local_spread (int,int ) ;
 int cpumask_set_cpu (int ,int ) ;
 int dev_err (int *,char*,int) ;
 int irq_set_affinity_hint (int ,int ) ;
 int num_online_cpus () ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static void cptvf_set_irq_affinity(struct cpt_vf *cptvf, int vec)
{
 struct pci_dev *pdev = cptvf->pdev;
 int cpu;

 if (!zalloc_cpumask_var(&cptvf->affinity_mask[vec],
    GFP_KERNEL)) {
  dev_err(&pdev->dev, "Allocation failed for affinity_mask for VF %d",
   cptvf->vfid);
  return;
 }

 cpu = cptvf->vfid % num_online_cpus();
 cpumask_set_cpu(cpumask_local_spread(cpu, cptvf->node),
   cptvf->affinity_mask[vec]);
 irq_set_affinity_hint(pci_irq_vector(pdev, vec),
   cptvf->affinity_mask[vec]);
}
