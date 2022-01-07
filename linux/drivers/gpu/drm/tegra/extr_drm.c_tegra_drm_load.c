
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int shift; int limit; int domain; } ;
struct tegra_drm {TYPE_4__* domain; TYPE_3__ carveout; int mm; int mm_lock; scalar_t__ hub; struct drm_device* drm; int clients; int clients_lock; } ;
struct host1x_device {int dev; } ;
struct TYPE_7__ {int max_width; int max_height; int allow_fb_modifiers; int normalize_zpos; int num_crtc; int * helper_private; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {int irq_enabled; int max_vblank_count; TYPE_2__ mode_config; struct tegra_drm* dev_private; int dev; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int aperture_start; int aperture_end; } ;
struct TYPE_9__ {int pgsize_bitmap; TYPE_1__ geometry; } ;


 int CARVEOUT_SZ ;
 int DRM_DEBUG (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long __ffs (int ) ;
 int dma_get_mask (int *) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mm_init (int *,int,int) ;
 int drm_mm_takedown (int *) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int host1x_device_exit (struct host1x_device*) ;
 int host1x_device_init (struct host1x_device*) ;
 int init_iova_domain (int *,unsigned long,int) ;
 TYPE_4__* iommu_domain_alloc (int *) ;
 int iommu_domain_free (TYPE_4__*) ;
 scalar_t__ iommu_present (int *) ;
 int iova_cache_get () ;
 int iova_cache_put () ;
 int iova_shift (int *) ;
 int kfree (struct tegra_drm*) ;
 struct tegra_drm* kzalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int platform_bus_type ;
 int put_iova_domain (int *) ;
 int tegra_display_hub_cleanup (scalar_t__) ;
 int tegra_display_hub_prepare (scalar_t__) ;
 int tegra_drm_fb_free (struct drm_device*) ;
 int tegra_drm_fb_init (struct drm_device*) ;
 int tegra_drm_fb_prepare (struct drm_device*) ;
 int tegra_drm_mode_config_funcs ;
 int tegra_drm_mode_config_helpers ;
 struct host1x_device* to_host1x_device (int ) ;

__attribute__((used)) static int tegra_drm_load(struct drm_device *drm, unsigned long flags)
{
 struct host1x_device *device = to_host1x_device(drm->dev);
 struct tegra_drm *tegra;
 int err;

 tegra = kzalloc(sizeof(*tegra), GFP_KERNEL);
 if (!tegra)
  return -ENOMEM;

 if (iommu_present(&platform_bus_type)) {
  tegra->domain = iommu_domain_alloc(&platform_bus_type);
  if (!tegra->domain) {
   err = -ENOMEM;
   goto free;
  }

  err = iova_cache_get();
  if (err < 0)
   goto domain;
 }

 mutex_init(&tegra->clients_lock);
 INIT_LIST_HEAD(&tegra->clients);

 drm->dev_private = tegra;
 tegra->drm = drm;

 drm_mode_config_init(drm);

 drm->mode_config.min_width = 0;
 drm->mode_config.min_height = 0;

 drm->mode_config.max_width = 4096;
 drm->mode_config.max_height = 4096;

 drm->mode_config.allow_fb_modifiers = 1;

 drm->mode_config.normalize_zpos = 1;

 drm->mode_config.funcs = &tegra_drm_mode_config_funcs;
 drm->mode_config.helper_private = &tegra_drm_mode_config_helpers;

 err = tegra_drm_fb_prepare(drm);
 if (err < 0)
  goto config;

 drm_kms_helper_poll_init(drm);

 err = host1x_device_init(device);
 if (err < 0)
  goto fbdev;

 if (tegra->domain) {
  u64 carveout_start, carveout_end, gem_start, gem_end;
  u64 dma_mask = dma_get_mask(&device->dev);
  dma_addr_t start, end;
  unsigned long order;

  start = tegra->domain->geometry.aperture_start & dma_mask;
  end = tegra->domain->geometry.aperture_end & dma_mask;

  gem_start = start;
  gem_end = end - CARVEOUT_SZ;
  carveout_start = gem_end + 1;
  carveout_end = end;

  order = __ffs(tegra->domain->pgsize_bitmap);
  init_iova_domain(&tegra->carveout.domain, 1UL << order,
     carveout_start >> order);

  tegra->carveout.shift = iova_shift(&tegra->carveout.domain);
  tegra->carveout.limit = carveout_end >> tegra->carveout.shift;

  drm_mm_init(&tegra->mm, gem_start, gem_end - gem_start + 1);
  mutex_init(&tegra->mm_lock);

  DRM_DEBUG("IOMMU apertures:\n");
  DRM_DEBUG("  GEM: %#llx-%#llx\n", gem_start, gem_end);
  DRM_DEBUG("  Carveout: %#llx-%#llx\n", carveout_start,
     carveout_end);
 }

 if (tegra->hub) {
  err = tegra_display_hub_prepare(tegra->hub);
  if (err < 0)
   goto device;
 }






 drm->irq_enabled = 1;


 drm->max_vblank_count = 0xffffffff;

 err = drm_vblank_init(drm, drm->mode_config.num_crtc);
 if (err < 0)
  goto hub;

 drm_mode_config_reset(drm);

 err = tegra_drm_fb_init(drm);
 if (err < 0)
  goto hub;

 return 0;

hub:
 if (tegra->hub)
  tegra_display_hub_cleanup(tegra->hub);
device:
 host1x_device_exit(device);
fbdev:
 drm_kms_helper_poll_fini(drm);
 tegra_drm_fb_free(drm);
config:
 drm_mode_config_cleanup(drm);

 if (tegra->domain) {
  mutex_destroy(&tegra->mm_lock);
  drm_mm_takedown(&tegra->mm);
  put_iova_domain(&tegra->carveout.domain);
  iova_cache_put();
 }
domain:
 if (tegra->domain)
  iommu_domain_free(tegra->domain);
free:
 kfree(tegra);
 return err;
}
