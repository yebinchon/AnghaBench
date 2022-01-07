
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* handler ) (int ,unsigned long,int) ;int arg; } ;
struct msm_iommu {TYPE_1__ base; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int pr_warn_ratelimited (char*,unsigned long,int) ;
 int stub1 (int ,unsigned long,int) ;

__attribute__((used)) static int msm_fault_handler(struct iommu_domain *domain, struct device *dev,
  unsigned long iova, int flags, void *arg)
{
 struct msm_iommu *iommu = arg;
 if (iommu->base.handler)
  return iommu->base.handler(iommu->base.arg, iova, flags);
 pr_warn_ratelimited("*** fault: iova=%16lx, flags=%d\n", iova, flags);
 return 0;
}
