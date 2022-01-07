
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dummy; } ;
struct iotlb_lock {int vict; int base; } ;


 int MMU_LOCK ;
 int MMU_LOCK_BASE (int ) ;
 int MMU_LOCK_VICT (int ) ;
 int iommu_read_reg (struct omap_iommu*,int ) ;

void iotlb_lock_get(struct omap_iommu *obj, struct iotlb_lock *l)
{
 u32 val;

 val = iommu_read_reg(obj, MMU_LOCK);

 l->base = MMU_LOCK_BASE(val);
 l->vict = MMU_LOCK_VICT(val);
}
