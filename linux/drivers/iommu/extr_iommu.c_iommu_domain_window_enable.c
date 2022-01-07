
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct iommu_domain {TYPE_1__* ops; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* domain_window_enable ) (struct iommu_domain*,int ,int ,int ,int) ;} ;


 int ENODEV ;
 int stub1 (struct iommu_domain*,int ,int ,int ,int) ;
 scalar_t__ unlikely (int ) ;

int iommu_domain_window_enable(struct iommu_domain *domain, u32 wnd_nr,
          phys_addr_t paddr, u64 size, int prot)
{
 if (unlikely(domain->ops->domain_window_enable == ((void*)0)))
  return -ENODEV;

 return domain->ops->domain_window_enable(domain, wnd_nr, paddr, size,
       prot);
}
