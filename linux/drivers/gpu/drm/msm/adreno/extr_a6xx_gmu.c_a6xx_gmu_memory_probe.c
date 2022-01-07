
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int uncached_iova_base; int * domain; int dev; } ;


 int ENODEV ;
 int iommu_attach_device (int *,int ) ;
 int * iommu_domain_alloc (int *) ;
 int iommu_domain_free (int *) ;
 int platform_bus_type ;

__attribute__((used)) static int a6xx_gmu_memory_probe(struct a6xx_gmu *gmu)
{
 int ret;






 gmu->uncached_iova_base = 0x60000000;


 gmu->domain = iommu_domain_alloc(&platform_bus_type);
 if (!gmu->domain)
  return -ENODEV;

 ret = iommu_attach_device(gmu->domain, gmu->dev);

 if (ret) {
  iommu_domain_free(gmu->domain);
  gmu->domain = ((void*)0);
 }

 return ret;
}
