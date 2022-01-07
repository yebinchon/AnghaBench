
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int irq; int name; int node; int seq_id; } ;


 int EINVAL ;
 int IRQF_NO_THREAD ;
 int dmar_alloc_hwirq (int ,int ,struct intel_iommu*) ;
 int dmar_fault ;
 int pr_err (char*) ;
 int request_irq (int,int ,int ,int ,struct intel_iommu*) ;

int dmar_set_interrupt(struct intel_iommu *iommu)
{
 int irq, ret;




 if (iommu->irq)
  return 0;

 irq = dmar_alloc_hwirq(iommu->seq_id, iommu->node, iommu);
 if (irq > 0) {
  iommu->irq = irq;
 } else {
  pr_err("No free IRQ vectors\n");
  return -EINVAL;
 }

 ret = request_irq(irq, dmar_fault, IRQF_NO_THREAD, iommu->name, iommu);
 if (ret)
  pr_err("Can't request irq\n");
 return ret;
}
