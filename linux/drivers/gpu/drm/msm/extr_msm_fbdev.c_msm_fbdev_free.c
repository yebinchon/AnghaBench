
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_fbdev {scalar_t__ fb; } ;
struct msm_drm_private {struct drm_fb_helper* fbdev; } ;
struct drm_gem_object {int dummy; } ;
struct drm_fb_helper {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 int DBG () ;
 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int drm_framebuffer_remove (scalar_t__) ;
 int kfree (struct msm_fbdev*) ;
 struct drm_gem_object* msm_framebuffer_bo (scalar_t__,int ) ;
 int msm_gem_put_vaddr (struct drm_gem_object*) ;
 struct msm_fbdev* to_msm_fbdev (struct drm_fb_helper*) ;

void msm_fbdev_free(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_fb_helper *helper = priv->fbdev;
 struct msm_fbdev *fbdev;

 DBG();

 drm_fb_helper_unregister_fbi(helper);

 drm_fb_helper_fini(helper);

 fbdev = to_msm_fbdev(priv->fbdev);


 if (fbdev->fb) {
  struct drm_gem_object *bo =
   msm_framebuffer_bo(fbdev->fb, 0);
  msm_gem_put_vaddr(bo);
  drm_framebuffer_remove(fbdev->fb);
 }

 kfree(fbdev);

 priv->fbdev = ((void*)0);
}
