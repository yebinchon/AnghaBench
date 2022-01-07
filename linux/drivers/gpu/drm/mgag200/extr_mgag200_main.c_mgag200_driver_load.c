
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int * pixels_current; int * pixels_2; int * pixels_1; } ;
struct TYPE_6__ {int vram_size; } ;
struct mga_device {struct drm_device* dev; TYPE_5__ cursor; TYPE_1__ mc; } ;
struct TYPE_7__ {int preferred_depth; int prefer_shadow; void* funcs; } ;
struct drm_device {int * dev_private; TYPE_4__* pdev; TYPE_3__* vram_mm; TYPE_2__ mode_config; int dev; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int bdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_G200_SE (struct mga_device*) ;
 int PAGE_SIZE ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 struct mga_device* devm_kzalloc (int ,int,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int ) ;
 void* drm_gem_vram_create (struct drm_device*,int *,int ,int ,int ) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int mga_mode_funcs ;
 int mgag200_device_init (struct drm_device*,unsigned long) ;
 int mgag200_mm_fini (struct mga_device*) ;
 int mgag200_mm_init (struct mga_device*) ;
 int mgag200_modeset_init (struct mga_device*) ;
 int roundup (int,int ) ;

int mgag200_driver_load(struct drm_device *dev, unsigned long flags)
{
 struct mga_device *mdev;
 int r;

 mdev = devm_kzalloc(dev->dev, sizeof(struct mga_device), GFP_KERNEL);
 if (mdev == ((void*)0))
  return -ENOMEM;
 dev->dev_private = (void *)mdev;
 mdev->dev = dev;

 r = mgag200_device_init(dev, flags);
 if (r) {
  dev_err(&dev->pdev->dev, "Fatal error during GPU init: %d\n", r);
  return r;
 }
 r = mgag200_mm_init(mdev);
 if (r)
  goto err_mm;

 drm_mode_config_init(dev);
 dev->mode_config.funcs = (void *)&mga_mode_funcs;
 if (IS_G200_SE(mdev) && mdev->mc.vram_size < (2048*1024))
  dev->mode_config.preferred_depth = 16;
 else
  dev->mode_config.preferred_depth = 32;
 dev->mode_config.prefer_shadow = 1;

 r = mgag200_modeset_init(mdev);
 if (r) {
  dev_err(&dev->pdev->dev, "Fatal error during modeset init: %d\n", r);
  goto err_modeset;
 }


 mdev->cursor.pixels_1 = drm_gem_vram_create(dev, &dev->vram_mm->bdev,
          roundup(48*64, PAGE_SIZE),
          0, 0);
 mdev->cursor.pixels_2 = drm_gem_vram_create(dev, &dev->vram_mm->bdev,
          roundup(48*64, PAGE_SIZE),
          0, 0);
 if (IS_ERR(mdev->cursor.pixels_2) || IS_ERR(mdev->cursor.pixels_1)) {
  mdev->cursor.pixels_1 = ((void*)0);
  mdev->cursor.pixels_2 = ((void*)0);
  dev_warn(&dev->pdev->dev,
   "Could not allocate space for cursors. Not doing hardware cursors.\n");
 }
 mdev->cursor.pixels_current = ((void*)0);

 r = drm_fbdev_generic_setup(mdev->dev, 0);
 if (r)
  goto err_modeset;

 return 0;

err_modeset:
 drm_mode_config_cleanup(dev);
 mgag200_mm_fini(mdev);
err_mm:
 dev->dev_private = ((void*)0);

 return r;
}
