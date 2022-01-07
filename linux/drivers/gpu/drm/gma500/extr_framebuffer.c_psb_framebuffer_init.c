
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** obj; } ;
struct psb_framebuffer {TYPE_1__ base; } ;
struct gtt_range {int gem; } ;
struct drm_mode_fb_cmd2 {int* pitches; } ;
struct drm_format_info {int* cpp; int depth; } ;
struct drm_device {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int drm_framebuffer_init (struct drm_device*,TYPE_1__*,int *) ;
 struct drm_format_info* drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,TYPE_1__*,struct drm_mode_fb_cmd2 const*) ;
 int psb_fb_funcs ;

__attribute__((used)) static int psb_framebuffer_init(struct drm_device *dev,
     struct psb_framebuffer *fb,
     const struct drm_mode_fb_cmd2 *mode_cmd,
     struct gtt_range *gt)
{
 const struct drm_format_info *info;
 int ret;





 info = drm_get_format_info(dev, mode_cmd);
 if (!info || !info->depth || info->cpp[0] > 4)
  return -EINVAL;

 if (mode_cmd->pitches[0] & 63)
  return -EINVAL;

 drm_helper_mode_fill_fb_struct(dev, &fb->base, mode_cmd);
 fb->base.obj[0] = &gt->gem;
 ret = drm_framebuffer_init(dev, &fb->base, &psb_fb_funcs);
 if (ret) {
  dev_err(dev->dev, "framebuffer init failed: %d\n", ret);
  return ret;
 }
 return 0;
}
