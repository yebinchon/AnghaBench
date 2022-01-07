
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOMMU_DOMAIN_IDENTITY ;
 scalar_t__ iommu_def_domain_type ;

bool iommu_default_passthrough(void)
{
 return iommu_def_domain_type == IOMMU_DOMAIN_IDENTITY;
}
