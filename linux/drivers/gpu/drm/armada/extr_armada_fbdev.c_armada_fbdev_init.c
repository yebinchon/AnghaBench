
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int dummy; } ;
struct drm_device {int dev; struct armada_private* dev_private; } ;
struct armada_private {struct drm_fb_helper* fbdev; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int armada_fb_helper_funcs ;
 struct drm_fb_helper* devm_kzalloc (int ,int,int ) ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_init (struct drm_device*,struct drm_fb_helper*,int) ;
 int drm_fb_helper_initial_config (struct drm_fb_helper*,int) ;
 int drm_fb_helper_prepare (struct drm_device*,struct drm_fb_helper*,int *) ;
 int drm_fb_helper_single_add_all_connectors (struct drm_fb_helper*) ;

int armada_fbdev_init(struct drm_device *dev)
{
 struct armada_private *priv = dev->dev_private;
 struct drm_fb_helper *fbh;
 int ret;

 fbh = devm_kzalloc(dev->dev, sizeof(*fbh), GFP_KERNEL);
 if (!fbh)
  return -ENOMEM;

 priv->fbdev = fbh;

 drm_fb_helper_prepare(dev, fbh, &armada_fb_helper_funcs);

 ret = drm_fb_helper_init(dev, fbh, 1);
 if (ret) {
  DRM_ERROR("failed to initialize drm fb helper\n");
  goto err_fb_helper;
 }

 ret = drm_fb_helper_single_add_all_connectors(fbh);
 if (ret) {
  DRM_ERROR("failed to add fb connectors\n");
  goto err_fb_setup;
 }

 ret = drm_fb_helper_initial_config(fbh, 32);
 if (ret) {
  DRM_ERROR("failed to set initial config\n");
  goto err_fb_setup;
 }

 return 0;
 err_fb_setup:
 drm_fb_helper_fini(fbh);
 err_fb_helper:
 priv->fbdev = ((void*)0);
 return ret;
}
