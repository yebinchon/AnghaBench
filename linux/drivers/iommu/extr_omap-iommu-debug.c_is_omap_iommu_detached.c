
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int domain; } ;



__attribute__((used)) static inline bool is_omap_iommu_detached(struct omap_iommu *obj)
{
 return !obj->domain;
}
