
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int * obj; TYPE_1__* format; scalar_t__ modifier; } ;
struct komeda_fb {int is_va; struct drm_framebuffer base; int format_caps; } ;
struct komeda_dev {scalar_t__ iommu; int fmt_tbl; } ;
struct drm_mode_fb_cmd2 {int pixel_format; int * modifier; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct komeda_dev* dev_private; } ;
struct TYPE_2__ {int num_planes; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 int drm_gem_object_put_unlocked (int ) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 int kfree (struct komeda_fb*) ;
 int komeda_fb_afbc_size_check (struct komeda_fb*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 int komeda_fb_funcs ;
 int komeda_fb_none_afbc_size_check (struct komeda_dev*,struct komeda_fb*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 int komeda_get_format_caps (int *,int ,int ) ;
 struct komeda_fb* kzalloc (int,int ) ;

struct drm_framebuffer *
komeda_fb_create(struct drm_device *dev, struct drm_file *file,
   const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct komeda_dev *mdev = dev->dev_private;
 struct komeda_fb *kfb;
 int ret = 0, i;

 kfb = kzalloc(sizeof(*kfb), GFP_KERNEL);
 if (!kfb)
  return ERR_PTR(-ENOMEM);

 kfb->format_caps = komeda_get_format_caps(&mdev->fmt_tbl,
        mode_cmd->pixel_format,
        mode_cmd->modifier[0]);
 if (!kfb->format_caps) {
  DRM_DEBUG_KMS("FMT %x is not supported.\n",
         mode_cmd->pixel_format);
  kfree(kfb);
  return ERR_PTR(-EINVAL);
 }

 drm_helper_mode_fill_fb_struct(dev, &kfb->base, mode_cmd);

 if (kfb->base.modifier)
  ret = komeda_fb_afbc_size_check(kfb, file, mode_cmd);
 else
  ret = komeda_fb_none_afbc_size_check(mdev, kfb, file, mode_cmd);
 if (ret < 0)
  goto err_cleanup;

 ret = drm_framebuffer_init(dev, &kfb->base, &komeda_fb_funcs);
 if (ret < 0) {
  DRM_DEBUG_KMS("failed to initialize fb\n");

  goto err_cleanup;
 }

 kfb->is_va = mdev->iommu ? 1 : 0;

 return &kfb->base;

err_cleanup:
 for (i = 0; i < kfb->base.format->num_planes; i++)
  drm_gem_object_put_unlocked(kfb->base.obj[i]);

 kfree(kfb);
 return ERR_PTR(ret);
}
