
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int dummy; } ;
struct msm_fbdev {struct drm_fb_helper base; } ;
struct msm_drm_private {struct drm_fb_helper* fbdev; int num_connectors; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int GFP_KERNEL ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int ) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,int) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,int *) ;
 int drm_fb_helper_remove_conflicting_framebuffers (int *,char*,int) ;
 int drm_fb_helper_single_add_all_connectors (struct drm_fb_helper*) ;
 int kfree (struct msm_fbdev*) ;
 struct msm_fbdev* kzalloc (int,int ) ;
 int msm_fb_helper_funcs ;

struct drm_fb_helper *msm_fbdev_init(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_fbdev *fbdev = ((void*)0);
 struct drm_fb_helper *helper;
 int ret;

 fbdev = kzalloc(sizeof(*fbdev), GFP_KERNEL);
 if (!fbdev)
  goto fail;

 helper = &fbdev->base;

 drm_fb_helper_prepare(dev, helper, &msm_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, helper, priv->num_connectors);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "could not init fbdev: ret=%d\n", ret);
  goto fail;
 }

 ret = drm_fb_helper_single_add_all_connectors(helper);
 if (ret)
  goto fini;


 drm_fb_helper_remove_conflicting_framebuffers(((void*)0), "msm", 0);

 ret = drm_fb_helper_initial_config(helper, 32);
 if (ret)
  goto fini;

 priv->fbdev = helper;

 return helper;

fini:
 drm_fb_helper_fini(helper);
fail:
 kfree(fbdev);
 return ((void*)0);
}
