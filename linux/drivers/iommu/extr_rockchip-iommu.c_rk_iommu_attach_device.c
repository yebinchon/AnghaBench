
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu_domain {int iommus_lock; int iommus; } ;
struct rk_iommu {int dev; struct iommu_domain* domain; int node; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int dev_dbg (struct device*,char*) ;
 int list_add_tail (int *,int *) ;
 int pm_runtime_get_if_in_use (int ) ;
 int pm_runtime_put (int ) ;
 int rk_iommu_detach_device (struct iommu_domain*,struct device*) ;
 int rk_iommu_enable (struct rk_iommu*) ;
 struct rk_iommu* rk_iommu_from_dev (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rk_iommu_domain* to_rk_domain (struct iommu_domain*) ;

__attribute__((used)) static int rk_iommu_attach_device(struct iommu_domain *domain,
  struct device *dev)
{
 struct rk_iommu *iommu;
 struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
 unsigned long flags;
 int ret;





 iommu = rk_iommu_from_dev(dev);
 if (!iommu)
  return 0;

 dev_dbg(dev, "Attaching to iommu domain\n");


 if (iommu->domain == domain)
  return 0;

 if (iommu->domain)
  rk_iommu_detach_device(iommu->domain, dev);

 iommu->domain = domain;

 spin_lock_irqsave(&rk_domain->iommus_lock, flags);
 list_add_tail(&iommu->node, &rk_domain->iommus);
 spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);

 ret = pm_runtime_get_if_in_use(iommu->dev);
 if (!ret || WARN_ON_ONCE(ret < 0))
  return 0;

 ret = rk_iommu_enable(iommu);
 if (ret)
  rk_iommu_detach_device(iommu->domain, dev);

 pm_runtime_put(iommu->dev);

 return ret;
}
