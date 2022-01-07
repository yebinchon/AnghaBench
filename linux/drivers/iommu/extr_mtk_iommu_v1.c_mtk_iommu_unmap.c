
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_iommu_domain {int data; int pgtlock; int * pgt_va; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 unsigned long MT2701_IOMMU_PAGE_SHIFT ;
 int memset (int *,int ,unsigned int) ;
 int mtk_iommu_tlb_flush_range (int ,unsigned long,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t mtk_iommu_unmap(struct iommu_domain *domain,
         unsigned long iova, size_t size,
         struct iommu_iotlb_gather *gather)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 unsigned long flags;
 u32 *pgt_base_iova = dom->pgt_va + (iova >> MT2701_IOMMU_PAGE_SHIFT);
 unsigned int page_num = size >> MT2701_IOMMU_PAGE_SHIFT;

 spin_lock_irqsave(&dom->pgtlock, flags);
 memset(pgt_base_iova, 0, page_num * sizeof(u32));
 spin_unlock_irqrestore(&dom->pgtlock, flags);

 mtk_iommu_tlb_flush_range(dom->data, iova, size);

 return size;
}
