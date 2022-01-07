
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dev; } ;


 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void iommu_disable(struct omap_iommu *obj)
{
 pm_runtime_put_sync(obj->dev);
}
