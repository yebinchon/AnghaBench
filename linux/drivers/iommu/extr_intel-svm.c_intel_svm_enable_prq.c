
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct intel_iommu {int seq_id; int pr_irq; int * prq; scalar_t__ reg; int name; int prq_name; int node; } ;


 scalar_t__ DMAR_PQA_REG ;
 scalar_t__ DMAR_PQH_REG ;
 scalar_t__ DMAR_PQT_REG ;
 int DMAR_UNITS_SUPPORTED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 unsigned long long PRQ_ORDER ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,unsigned long long) ;
 int dmar_alloc_hwirq (int,int ,struct intel_iommu*) ;
 int dmar_free_hwirq (int) ;
 int dmar_writeq (scalar_t__,unsigned long long) ;
 int free_pages (unsigned long,unsigned long long) ;
 int * page_address (struct page*) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ) ;
 int prq_event_thread ;
 int request_threaded_irq (int,int *,int ,int ,int ,struct intel_iommu*) ;
 int snprintf (int ,int,char*,int) ;
 unsigned long long virt_to_phys (int *) ;

int intel_svm_enable_prq(struct intel_iommu *iommu)
{
 struct page *pages;
 int irq, ret;

 pages = alloc_pages(GFP_KERNEL | __GFP_ZERO, PRQ_ORDER);
 if (!pages) {
  pr_warn("IOMMU: %s: Failed to allocate page request queue\n",
   iommu->name);
  return -ENOMEM;
 }
 iommu->prq = page_address(pages);

 irq = dmar_alloc_hwirq(DMAR_UNITS_SUPPORTED + iommu->seq_id, iommu->node, iommu);
 if (irq <= 0) {
  pr_err("IOMMU: %s: Failed to create IRQ vector for page request queue\n",
         iommu->name);
  ret = -EINVAL;
 err:
  free_pages((unsigned long)iommu->prq, PRQ_ORDER);
  iommu->prq = ((void*)0);
  return ret;
 }
 iommu->pr_irq = irq;

 snprintf(iommu->prq_name, sizeof(iommu->prq_name), "dmar%d-prq", iommu->seq_id);

 ret = request_threaded_irq(irq, ((void*)0), prq_event_thread, IRQF_ONESHOT,
       iommu->prq_name, iommu);
 if (ret) {
  pr_err("IOMMU: %s: Failed to request IRQ for page request queue\n",
         iommu->name);
  dmar_free_hwirq(irq);
  iommu->pr_irq = 0;
  goto err;
 }
 dmar_writeq(iommu->reg + DMAR_PQH_REG, 0ULL);
 dmar_writeq(iommu->reg + DMAR_PQT_REG, 0ULL);
 dmar_writeq(iommu->reg + DMAR_PQA_REG, virt_to_phys(iommu->prq) | PRQ_ORDER);

 return 0;
}
