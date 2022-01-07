
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int iommu_enable(struct omap_iommu *obj)
{
 int ret;

 ret = pm_runtime_get_sync(obj->dev);
 if (ret < 0)
  pm_runtime_put_noidle(obj->dev);

 return ret < 0 ? ret : 0;
}
