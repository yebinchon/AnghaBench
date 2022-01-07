
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {TYPE_7__* fbdev; } ;
struct nouveau_fbdev {TYPE_8__ helper; int hotplug_lock; } ;
struct TYPE_15__ {int ram_size; } ;
struct TYPE_16__ {TYPE_3__ info; } ;
struct TYPE_17__ {TYPE_4__ device; } ;
struct nouveau_drm {TYPE_5__ client; int fbcon_work; struct nouveau_fbdev* fbcon; } ;
struct TYPE_13__ {int num_crtc; } ;
struct drm_device {TYPE_2__* pdev; TYPE_1__ mode_config; } ;
struct TYPE_18__ {int buf_align; } ;
struct TYPE_19__ {TYPE_6__ pixmap; } ;
struct TYPE_14__ {int class; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int PCI_CLASS_DISPLAY_VGA ;
 int drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_fb_helper_fini (TYPE_8__*) ;
 int drm_fb_helper_init (struct drm_device*,TYPE_8__*,int) ;
 int drm_fb_helper_initial_config (TYPE_8__*,int) ;
 int drm_fb_helper_prepare (struct drm_device*,TYPE_8__*,int *) ;
 int drm_fb_helper_single_add_all_connectors (TYPE_8__*) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;
 int kfree (struct nouveau_fbdev*) ;
 struct nouveau_fbdev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_bpp ;
 int nouveau_fbcon_helper_funcs ;
 int nouveau_fbcon_set_suspend_work ;

int
nouveau_fbcon_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_fbdev *fbcon;
 int preferred_bpp = nouveau_fbcon_bpp;
 int ret;

 if (!dev->mode_config.num_crtc ||
     (dev->pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
  return 0;

 fbcon = kzalloc(sizeof(struct nouveau_fbdev), GFP_KERNEL);
 if (!fbcon)
  return -ENOMEM;

 drm->fbcon = fbcon;
 INIT_WORK(&drm->fbcon_work, nouveau_fbcon_set_suspend_work);
 mutex_init(&fbcon->hotplug_lock);

 drm_fb_helper_prepare(dev, &fbcon->helper, &nouveau_fbcon_helper_funcs);

 ret = drm_fb_helper_init(dev, &fbcon->helper, 4);
 if (ret)
  goto free;

 ret = drm_fb_helper_single_add_all_connectors(&fbcon->helper);
 if (ret)
  goto fini;

 if (preferred_bpp != 8 && preferred_bpp != 16 && preferred_bpp != 32) {
  if (drm->client.device.info.ram_size <= 32 * 1024 * 1024)
   preferred_bpp = 8;
  else
  if (drm->client.device.info.ram_size <= 64 * 1024 * 1024)
   preferred_bpp = 16;
  else
   preferred_bpp = 32;
 }


 if (!drm_drv_uses_atomic_modeset(dev))
  drm_helper_disable_unused_functions(dev);

 ret = drm_fb_helper_initial_config(&fbcon->helper, preferred_bpp);
 if (ret)
  goto fini;

 if (fbcon->helper.fbdev)
  fbcon->helper.fbdev->pixmap.buf_align = 4;
 return 0;

fini:
 drm_fb_helper_fini(&fbcon->helper);
free:
 kfree(fbcon);
 return ret;
}
