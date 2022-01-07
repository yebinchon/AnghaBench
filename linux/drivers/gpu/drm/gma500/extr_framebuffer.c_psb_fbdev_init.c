
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_fbdev {int psb_fb_helper; } ;
struct drm_psb_private {struct psb_fbdev* fbdev; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INTELFB_CONN_LIMIT ;
 int dev_err (int ,char*) ;
 int drm_fb_helper_fini (int *) ;
 int drm_fb_helper_init (struct drm_device*,int *,int ) ;
 int drm_fb_helper_initial_config (int *,int) ;
 int drm_fb_helper_prepare (struct drm_device*,int *,int *) ;
 int drm_fb_helper_single_add_all_connectors (int *) ;
 int drm_helper_disable_unused_functions (struct drm_device*) ;
 int kfree (struct psb_fbdev*) ;
 struct psb_fbdev* kzalloc (int,int ) ;
 int psb_fb_helper_funcs ;

int psb_fbdev_init(struct drm_device *dev)
{
 struct psb_fbdev *fbdev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 int ret;

 fbdev = kzalloc(sizeof(struct psb_fbdev), GFP_KERNEL);
 if (!fbdev) {
  dev_err(dev->dev, "no memory\n");
  return -ENOMEM;
 }

 dev_priv->fbdev = fbdev;

 drm_fb_helper_prepare(dev, &fbdev->psb_fb_helper, &psb_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, &fbdev->psb_fb_helper,
     INTELFB_CONN_LIMIT);
 if (ret)
  goto free;

 ret = drm_fb_helper_single_add_all_connectors(&fbdev->psb_fb_helper);
 if (ret)
  goto fini;


 drm_helper_disable_unused_functions(dev);

 ret = drm_fb_helper_initial_config(&fbdev->psb_fb_helper, 32);
 if (ret)
  goto fini;

 return 0;

fini:
 drm_fb_helper_fini(&fbdev->psb_fb_helper);
free:
 kfree(fbdev);
 return ret;
}
