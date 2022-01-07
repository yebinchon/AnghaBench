
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_mmu_pt {int dummy; } ;
struct psb_mmu_pd {int hw_context; int p; int dummy_pt; int dummy_page; struct psb_mmu_pt** tables; struct psb_mmu_driver* driver; } ;
struct psb_mmu_driver {int sem; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE0 ;
 int PSB_WSGX32 (int ,scalar_t__) ;
 int __free_page (int ) ;
 int down_write (int *) ;
 int kfree (struct psb_mmu_pd*) ;
 int psb_mmu_flush_pd_locked (struct psb_mmu_driver*,int) ;
 int psb_mmu_free_pt (struct psb_mmu_pt*) ;
 int up_write (int *) ;
 int vfree (struct psb_mmu_pt**) ;

void psb_mmu_free_pagedir(struct psb_mmu_pd *pd)
{
 struct psb_mmu_driver *driver = pd->driver;
 struct drm_device *dev = driver->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_mmu_pt *pt;
 int i;

 down_write(&driver->sem);
 if (pd->hw_context != -1) {
  PSB_WSGX32(0, PSB_CR_BIF_DIR_LIST_BASE0 + pd->hw_context * 4);
  psb_mmu_flush_pd_locked(driver, 1);
 }




 for (i = 0; i < 1024; ++i) {
  pt = pd->tables[i];
  if (pt)
   psb_mmu_free_pt(pt);
 }

 vfree(pd->tables);
 __free_page(pd->dummy_page);
 __free_page(pd->dummy_pt);
 __free_page(pd->p);
 kfree(pd);
 up_write(&driver->sem);
}
