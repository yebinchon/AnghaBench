
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dummy; } ;
struct iotlb_lock {int base; int vict; } ;


 int MMU_LOCK ;
 int MMU_LOCK_BASE_SHIFT ;
 int MMU_LOCK_VICT_SHIFT ;
 int iommu_write_reg (struct omap_iommu*,int,int ) ;

void iotlb_lock_set(struct omap_iommu *obj, struct iotlb_lock *l)
{
 u32 val;

 val = (l->base << MMU_LOCK_BASE_SHIFT);
 val |= (l->vict << MMU_LOCK_VICT_SHIFT);

 iommu_write_reg(obj, val, MMU_LOCK);
}
