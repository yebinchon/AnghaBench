
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_priv {int pgtlock; TYPE_1__* iop; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {size_t (* unmap ) (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t stub1 (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 struct msm_priv* to_msm_priv (struct iommu_domain*) ;

__attribute__((used)) static size_t msm_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
         size_t len, struct iommu_iotlb_gather *gather)
{
 struct msm_priv *priv = to_msm_priv(domain);
 unsigned long flags;

 spin_lock_irqsave(&priv->pgtlock, flags);
 len = priv->iop->unmap(priv->iop, iova, len, gather);
 spin_unlock_irqrestore(&priv->pgtlock, flags);

 return len;
}
