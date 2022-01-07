
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bo {int gem; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int ** obj; TYPE_1__* format; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {unsigned int num_planes; } ;


 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 int kfree (struct drm_framebuffer*) ;
 struct drm_framebuffer* kzalloc (int,int ) ;
 int tegra_fb_funcs ;

__attribute__((used)) static struct drm_framebuffer *tegra_fb_alloc(struct drm_device *drm,
           const struct drm_mode_fb_cmd2 *mode_cmd,
           struct tegra_bo **planes,
           unsigned int num_planes)
{
 struct drm_framebuffer *fb;
 unsigned int i;
 int err;

 fb = kzalloc(sizeof(*fb), GFP_KERNEL);
 if (!fb)
  return ERR_PTR(-ENOMEM);

 drm_helper_mode_fill_fb_struct(drm, fb, mode_cmd);

 for (i = 0; i < fb->format->num_planes; i++)
  fb->obj[i] = &planes[i]->gem;

 err = drm_framebuffer_init(drm, fb, &tegra_fb_funcs);
 if (err < 0) {
  dev_err(drm->dev, "failed to initialize framebuffer: %d\n",
   err);
  kfree(fb);
  return ERR_PTR(err);
 }

 return fb;
}
