
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_mmu_driver {int default_pd; int bif_ctrl; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PSB_CR_BIF_CTRL ;
 int PSB_WSGX32 (int ,int ) ;
 int kfree (struct psb_mmu_driver*) ;
 int psb_mmu_free_pagedir (int ) ;

void psb_mmu_driver_takedown(struct psb_mmu_driver *driver)
{
 struct drm_device *dev = driver->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;

 PSB_WSGX32(driver->bif_ctrl, PSB_CR_BIF_CTRL);
 psb_mmu_free_pagedir(driver->default_pd);
 kfree(driver);
}
