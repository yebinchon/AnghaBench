
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iommu_domain {TYPE_1__* ops; } ;
struct TYPE_2__ {void (* domain_window_disable ) (struct iommu_domain*,int ) ;} ;


 void stub1 (struct iommu_domain*,int ) ;
 scalar_t__ unlikely (int ) ;

void iommu_domain_window_disable(struct iommu_domain *domain, u32 wnd_nr)
{
 if (unlikely(domain->ops->domain_window_disable == ((void*)0)))
  return;

 return domain->ops->domain_window_disable(domain, wnd_nr);
}
