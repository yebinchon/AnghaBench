
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dev; } ;
struct iotlb_lock {scalar_t__ vict; scalar_t__ base; } ;


 int MMU_GFLUSH ;
 int iommu_write_reg (struct omap_iommu*,int,int ) ;
 int iotlb_lock_set (struct omap_iommu*,struct iotlb_lock*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void flush_iotlb_all(struct omap_iommu *obj)
{
 struct iotlb_lock l;

 pm_runtime_get_sync(obj->dev);

 l.base = 0;
 l.vict = 0;
 iotlb_lock_set(obj, &l);

 iommu_write_reg(obj, 1, MMU_GFLUSH);

 pm_runtime_put_sync(obj->dev);
}
