
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int dummy; } ;
struct omap_fbdev {struct drm_fb_helper base; int work; } ;
struct omap_drm_private {struct drm_fb_helper* fbdev; int num_pipes; } ;
struct drm_device {int dev; struct omap_drm_private* dev_private; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int dev_warn (int ,char*) ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int ) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,int) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,int *) ;
 int drm_fb_helper_single_add_all_connectors (struct drm_fb_helper*) ;
 int kfree (struct omap_fbdev*) ;
 struct omap_fbdev* kzalloc (int,int ) ;
 int omap_fb_helper_funcs ;
 int pan_worker ;

void omap_fbdev_init(struct drm_device *dev)
{
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_fbdev *fbdev = ((void*)0);
 struct drm_fb_helper *helper;
 int ret = 0;

 if (!priv->num_pipes)
  return;

 fbdev = kzalloc(sizeof(*fbdev), GFP_KERNEL);
 if (!fbdev)
  goto fail;

 INIT_WORK(&fbdev->work, pan_worker);

 helper = &fbdev->base;

 drm_fb_helper_prepare(dev, helper, &omap_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, helper, priv->num_pipes);
 if (ret)
  goto fail;

 ret = drm_fb_helper_single_add_all_connectors(helper);
 if (ret)
  goto fini;

 ret = drm_fb_helper_initial_config(helper, 32);
 if (ret)
  goto fini;

 priv->fbdev = helper;

 return;

fini:
 drm_fb_helper_fini(helper);
fail:
 kfree(fbdev);

 dev_warn(dev->dev, "omap_fbdev_init failed\n");
}
