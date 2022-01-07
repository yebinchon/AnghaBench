
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int ** obj; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int check_fb_gem_memory_type (struct drm_device*,struct exynos_drm_gem*) ;
 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 int exynos_drm_fb_funcs ;
 int kfree (struct drm_framebuffer*) ;
 struct drm_framebuffer* kzalloc (int,int ) ;

struct drm_framebuffer *
exynos_drm_framebuffer_init(struct drm_device *dev,
       const struct drm_mode_fb_cmd2 *mode_cmd,
       struct exynos_drm_gem **exynos_gem,
       int count)
{
 struct drm_framebuffer *fb;
 int i;
 int ret;

 fb = kzalloc(sizeof(*fb), GFP_KERNEL);
 if (!fb)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < count; i++) {
  ret = check_fb_gem_memory_type(dev, exynos_gem[i]);
  if (ret < 0)
   goto err;

  fb->obj[i] = &exynos_gem[i]->base;
 }

 drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);

 ret = drm_framebuffer_init(dev, fb, &exynos_drm_fb_funcs);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev,
         "failed to initialize framebuffer\n");
  goto err;
 }

 return fb;

err:
 kfree(fb);
 return ERR_PTR(ret);
}
