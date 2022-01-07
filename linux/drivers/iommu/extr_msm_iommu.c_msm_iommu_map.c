
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_priv {int pgtlock; TYPE_1__* iop; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* map ) (TYPE_1__*,unsigned long,int ,size_t,int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,unsigned long,int ,size_t,int) ;
 struct msm_priv* to_msm_priv (struct iommu_domain*) ;

__attribute__((used)) static int msm_iommu_map(struct iommu_domain *domain, unsigned long iova,
    phys_addr_t pa, size_t len, int prot)
{
 struct msm_priv *priv = to_msm_priv(domain);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&priv->pgtlock, flags);
 ret = priv->iop->map(priv->iop, iova, pa, len, prot);
 spin_unlock_irqrestore(&priv->pgtlock, flags);

 return ret;
}
