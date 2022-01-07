
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;


 int FLUSH_GART_REGS (int ) ;
 int gart_handle ;

__attribute__((used)) static void gart_iommu_sync_map(struct iommu_domain *domain)
{
 FLUSH_GART_REGS(gart_handle);
}
