
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_iommu {int name; int dev; int iommu; int * group; } ;


 int dev_info (int *,char*,int ) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int iommu_group_put (int *) ;
 int omap_iommu_debugfs_remove (struct omap_iommu*) ;
 struct omap_iommu* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;

__attribute__((used)) static int omap_iommu_remove(struct platform_device *pdev)
{
 struct omap_iommu *obj = platform_get_drvdata(pdev);

 if (obj->group) {
  iommu_group_put(obj->group);
  obj->group = ((void*)0);

  iommu_device_sysfs_remove(&obj->iommu);
  iommu_device_unregister(&obj->iommu);
 }

 omap_iommu_debugfs_remove(obj);

 pm_runtime_disable(obj->dev);

 dev_info(&pdev->dev, "%s removed\n", obj->name);
 return 0;
}
