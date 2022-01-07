
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int omap2_iommu_dump_ctx (struct omap_iommu*,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static ssize_t omap_iommu_dump_ctx(struct omap_iommu *obj, char *buf,
       ssize_t bytes)
{
 if (!obj || !buf)
  return -EINVAL;

 pm_runtime_get_sync(obj->dev);

 bytes = omap2_iommu_dump_ctx(obj, buf, bytes);

 pm_runtime_put_sync(obj->dev);

 return bytes;
}
