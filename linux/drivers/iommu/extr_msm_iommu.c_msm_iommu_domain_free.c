
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_priv {int dummy; } ;
struct iommu_domain {int dummy; } ;


 int kfree (struct msm_priv*) ;
 int msm_iommu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msm_priv* to_msm_priv (struct iommu_domain*) ;

__attribute__((used)) static void msm_iommu_domain_free(struct iommu_domain *domain)
{
 struct msm_priv *priv;
 unsigned long flags;

 spin_lock_irqsave(&msm_iommu_lock, flags);
 priv = to_msm_priv(domain);
 kfree(priv);
 spin_unlock_irqrestore(&msm_iommu_lock, flags);
}
