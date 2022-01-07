
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_gtt {int sem; int mmu_gatt_start; } ;
struct drm_psb_private {int vram_stolen_size; int lpc_pdev; int aux_pdev; int * aux_reg; int * sgx_reg; int * vdc_reg; int * scratch_page; int * mmu; struct psb_gtt gtt; int * pf_pd; TYPE_1__* ops; scalar_t__ backlight_device; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int (* chip_teardown ) (struct drm_device*) ;} ;


 int PAGE_SHIFT ;
 int __free_page (int *) ;
 int down_read (int *) ;
 int gma_backlight_exit (struct drm_device*) ;
 int gma_power_uninit (struct drm_device*) ;
 int iounmap (int *) ;
 int kfree (struct drm_psb_private*) ;
 int pci_dev_put (int ) ;
 int psb_gtt_takedown (struct drm_device*) ;
 int psb_intel_destroy_bios (struct drm_device*) ;
 int psb_intel_opregion_fini (struct drm_device*) ;
 int psb_mmu_driver_takedown (int *) ;
 int psb_mmu_free_pagedir (int *) ;
 int psb_mmu_get_default_pd (int *) ;
 int psb_mmu_remove_pfn_sequence (int ,int ,int) ;
 int psb_modeset_cleanup (struct drm_device*) ;
 int set_pages_wb (int *,int) ;
 int stub1 (struct drm_device*) ;
 int up_read (int *) ;

__attribute__((used)) static void psb_driver_unload(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;



 if (dev_priv) {
  if (dev_priv->backlight_device)
   gma_backlight_exit(dev);
  psb_modeset_cleanup(dev);

  if (dev_priv->ops->chip_teardown)
   dev_priv->ops->chip_teardown(dev);

  psb_intel_opregion_fini(dev);

  if (dev_priv->pf_pd) {
   psb_mmu_free_pagedir(dev_priv->pf_pd);
   dev_priv->pf_pd = ((void*)0);
  }
  if (dev_priv->mmu) {
   struct psb_gtt *pg = &dev_priv->gtt;

   down_read(&pg->sem);
   psb_mmu_remove_pfn_sequence(
    psb_mmu_get_default_pd
    (dev_priv->mmu),
    pg->mmu_gatt_start,
    dev_priv->vram_stolen_size >> PAGE_SHIFT);
   up_read(&pg->sem);
   psb_mmu_driver_takedown(dev_priv->mmu);
   dev_priv->mmu = ((void*)0);
  }
  psb_gtt_takedown(dev);
  if (dev_priv->scratch_page) {
   set_pages_wb(dev_priv->scratch_page, 1);
   __free_page(dev_priv->scratch_page);
   dev_priv->scratch_page = ((void*)0);
  }
  if (dev_priv->vdc_reg) {
   iounmap(dev_priv->vdc_reg);
   dev_priv->vdc_reg = ((void*)0);
  }
  if (dev_priv->sgx_reg) {
   iounmap(dev_priv->sgx_reg);
   dev_priv->sgx_reg = ((void*)0);
  }
  if (dev_priv->aux_reg) {
   iounmap(dev_priv->aux_reg);
   dev_priv->aux_reg = ((void*)0);
  }
  pci_dev_put(dev_priv->aux_pdev);
  pci_dev_put(dev_priv->lpc_pdev);


  psb_intel_destroy_bios(dev);

  kfree(dev_priv);
  dev->dev_private = ((void*)0);
 }
 gma_power_uninit(dev);
}
