
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_mmu_driver {int bif_ctrl; int has_clflush; int clflush_add; int clflush_mask; int sem; int * msvdx_mmu_invaldc; int needs_tlbflush; int lock; int default_pd; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
typedef int atomic_t ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PSB_CR_BIF_CTRL ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int,int ) ;
 int X86_FEATURE_CLFLUSH ;
 int _PSB_CB_CTRL_CLEAR_FAULT ;
 int atomic_set (int *,int) ;
 scalar_t__ boot_cpu_has (int ) ;
 int cpuid (int,int*,int*,int*,int*) ;
 int down_write (int *) ;
 int init_rwsem (int *) ;
 int kfree (struct psb_mmu_driver*) ;
 struct psb_mmu_driver* kmalloc (int,int ) ;
 int psb_mmu_alloc_pd (struct psb_mmu_driver*,int,int) ;
 int spin_lock_init (int *) ;
 int up_write (int *) ;

struct psb_mmu_driver *psb_mmu_driver_init(struct drm_device *dev,
        int trap_pagefaults,
        int invalid_type,
        atomic_t *msvdx_mmu_invaldc)
{
 struct psb_mmu_driver *driver;
 struct drm_psb_private *dev_priv = dev->dev_private;

 driver = kmalloc(sizeof(*driver), GFP_KERNEL);

 if (!driver)
  return ((void*)0);

 driver->dev = dev;
 driver->default_pd = psb_mmu_alloc_pd(driver, trap_pagefaults,
           invalid_type);
 if (!driver->default_pd)
  goto out_err1;

 spin_lock_init(&driver->lock);
 init_rwsem(&driver->sem);
 down_write(&driver->sem);
 atomic_set(&driver->needs_tlbflush, 1);
 driver->msvdx_mmu_invaldc = msvdx_mmu_invaldc;

 driver->bif_ctrl = PSB_RSGX32(PSB_CR_BIF_CTRL);
 PSB_WSGX32(driver->bif_ctrl | _PSB_CB_CTRL_CLEAR_FAULT,
     PSB_CR_BIF_CTRL);
 PSB_WSGX32(driver->bif_ctrl & ~_PSB_CB_CTRL_CLEAR_FAULT,
     PSB_CR_BIF_CTRL);

 driver->has_clflush = 0;
 up_write(&driver->sem);
 return driver;

out_err1:
 kfree(driver);
 return ((void*)0);
}
