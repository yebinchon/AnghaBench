
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {struct drm_gem_object** obj; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 int kfree (struct drm_framebuffer*) ;
 struct drm_framebuffer* kzalloc (int,int ) ;
 int rockchip_drm_fb_funcs ;

__attribute__((used)) static struct drm_framebuffer *
rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cmd,
    struct drm_gem_object **obj, unsigned int num_planes)
{
 struct drm_framebuffer *fb;
 int ret;
 int i;

 fb = kzalloc(sizeof(*fb), GFP_KERNEL);
 if (!fb)
  return ERR_PTR(-ENOMEM);

 drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);

 for (i = 0; i < num_planes; i++)
  fb->obj[i] = obj[i];

 ret = drm_framebuffer_init(dev, fb, &rockchip_drm_fb_funcs);
 if (ret) {
  DRM_DEV_ERROR(dev->dev,
         "Failed to initialize framebuffer: %d\n",
         ret);
  kfree(fb);
  return ERR_PTR(ret);
 }

 return fb;
}
