
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_domain {int* pgt_va; int pgtlock; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int MT2701_IOMMU_PAGE_SHIFT ;
 int MT2701_IOMMU_PAGE_SIZE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
       dma_addr_t iova)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 unsigned long flags;
 phys_addr_t pa;

 spin_lock_irqsave(&dom->pgtlock, flags);
 pa = *(dom->pgt_va + (iova >> MT2701_IOMMU_PAGE_SHIFT));
 pa = pa & (~(MT2701_IOMMU_PAGE_SIZE - 1));
 spin_unlock_irqrestore(&dom->pgtlock, flags);

 return pa;
}
