
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_mode_fb_cmd2 {int width; int height; int* pitches; int pixel_format; } ;
struct drm_gem_object {int dummy; } ;
typedef struct drm_gem_object drm_framebuffer ;
struct drm_device {int dev; TYPE_1__* primary; } ;
struct TYPE_2__ {int index; } ;


 int DBG (char*,int,int ) ;
 int DRM_DEV_ERROR (int ,char*) ;
 struct drm_gem_object* ERR_CAST (struct drm_gem_object*) ;
 scalar_t__ IS_ERR (struct drm_gem_object*) ;
 int MSM_BO_SCANOUT ;
 int MSM_BO_STOLEN ;
 int MSM_BO_WC ;
 int dev_warn (int ,char*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct drm_gem_object* msm_framebuffer_init (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_gem_object**) ;
 struct drm_gem_object* msm_gem_new (struct drm_device*,int,int) ;
 int msm_gem_object_set_name (struct drm_gem_object*,char*) ;

struct drm_framebuffer *
msm_alloc_stolen_fb(struct drm_device *dev, int w, int h, int p, uint32_t format)
{
 struct drm_mode_fb_cmd2 mode_cmd = {
  .pixel_format = format,
  .width = w,
  .height = h,
  .pitches = { p },
 };
 struct drm_gem_object *bo;
 struct drm_framebuffer *fb;
 int size;


 size = mode_cmd.pitches[0] * mode_cmd.height;
 DBG("allocating %d bytes for fb %d", size, dev->primary->index);
 bo = msm_gem_new(dev, size, MSM_BO_SCANOUT | MSM_BO_WC | MSM_BO_STOLEN);
 if (IS_ERR(bo)) {
  dev_warn(dev->dev, "could not allocate stolen bo\n");

  bo = msm_gem_new(dev, size, MSM_BO_SCANOUT | MSM_BO_WC);
 }
 if (IS_ERR(bo)) {
  DRM_DEV_ERROR(dev->dev, "failed to allocate buffer object\n");
  return ERR_CAST(bo);
 }

 msm_gem_object_set_name(bo, "stolenfb");

 fb = msm_framebuffer_init(dev, &mode_cmd, &bo);
 if (IS_ERR(fb)) {
  DRM_DEV_ERROR(dev->dev, "failed to allocate fb\n");



  drm_gem_object_put_unlocked(bo);
  return ERR_CAST(fb);
 }

 return fb;
}
