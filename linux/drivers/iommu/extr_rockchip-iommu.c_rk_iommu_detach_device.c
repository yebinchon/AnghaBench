
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu_domain {int iommus_lock; } ;
struct rk_iommu {int dev; int node; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int dev_dbg (struct device*,char*) ;
 int list_del_init (int *) ;
 int pm_runtime_get_if_in_use (int ) ;
 int pm_runtime_put (int ) ;
 int rk_iommu_disable (struct rk_iommu*) ;
 struct rk_iommu* rk_iommu_from_dev (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rk_iommu_domain* to_rk_domain (struct iommu_domain*) ;

__attribute__((used)) static void rk_iommu_detach_device(struct iommu_domain *domain,
       struct device *dev)
{
 struct rk_iommu *iommu;
 struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 unsigned long flags;
 int ret;


 iommu = rk_iommu_from_dev(dev);
 if (!iommu)
  return;

 dev_dbg(dev, "Detaching from iommu domain\n");


 if (iommu->domain != domain)
  return;

 iommu->domain = ((void*)0);

 spin_lock_irqsave(&rk_domain->iommus_lock, flags);
 list_del_init(&iommu->node);
 spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);

 ret = pm_runtime_get_if_in_use(iommu->dev);
 WARN_ON_ONCE(ret < 0);
 if (ret > 0) {
  rk_iommu_disable(iommu);
  pm_runtime_put(iommu->dev);
 }
}
