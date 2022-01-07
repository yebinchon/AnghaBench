
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_iommu_domain {int pgtlock; TYPE_1__* iop; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {size_t (* unmap ) (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t stub1 (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t mtk_iommu_unmap(struct iommu_domain *domain,
         unsigned long iova, size_t size,
         struct iommu_iotlb_gather *gather)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 unsigned long flags;
 size_t unmapsz;

 spin_lock_irqsave(&dom->pgtlock, flags);
 unmapsz = dom->iop->unmap(dom->iop, iova, size, gather);
 spin_unlock_irqrestore(&dom->pgtlock, flags);

 return unmapsz;
}
