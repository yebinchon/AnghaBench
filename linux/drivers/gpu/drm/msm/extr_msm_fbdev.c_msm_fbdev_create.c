
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct msm_fbdev {struct fb_info* fb; } ;
struct msm_drm_private {TYPE_1__* kms; } ;
struct TYPE_8__ {int yres; int xres; } ;
struct TYPE_7__ {int smem_len; void* smem_start; } ;
struct fb_info {struct drm_device* height; struct fb_info* width; TYPE_4__ var; int par; TYPE_3__ fix; int screen_size; struct fb_info* screen_base; int * fbops; } ;
struct drm_gem_object {int size; } ;
struct drm_framebuffer {struct drm_device* height; struct drm_framebuffer* width; TYPE_4__ var; int par; TYPE_3__ fix; int screen_size; struct drm_framebuffer* screen_base; int * fbops; } ;
struct drm_fb_helper_surface_size {int surface_height; int surface_width; int surface_bpp; int fb_height; int fb_width; int surface_depth; } ;
struct drm_fb_helper {struct fb_info* fb; struct drm_device* dev; } ;
struct TYPE_6__ {void* fb_base; } ;
struct drm_device {int struct_mutex; TYPE_2__ mode_config; int dev; struct msm_drm_private* dev_private; } ;
struct TYPE_5__ {int aspace; } ;


 int DBG (char*,struct fb_info*,struct drm_device*,...) ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 scalar_t__ IS_ERR (struct fb_info*) ;
 int PTR_ERR (struct fb_info*) ;
 int align_pitch (int ,int ) ;
 struct fb_info* drm_fb_helper_alloc_fbi (struct drm_fb_helper*) ;
 int drm_fb_helper_fill_info (struct fb_info*,struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ;
 int drm_framebuffer_remove (struct fb_info*) ;
 int drm_mode_legacy_fb_format (int ,int ) ;
 struct fb_info* msm_alloc_stolen_fb (struct drm_device*,int ,int ,int,int ) ;
 int msm_fb_ops ;
 struct drm_gem_object* msm_framebuffer_bo (struct fb_info*,int ) ;
 int msm_gem_get_and_pin_iova (struct drm_gem_object*,int ,void**) ;
 struct fb_info* msm_gem_get_vaddr (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_fbdev* to_msm_fbdev (struct drm_fb_helper*) ;

__attribute__((used)) static int msm_fbdev_create(struct drm_fb_helper *helper,
  struct drm_fb_helper_surface_size *sizes)
{
 struct msm_fbdev *fbdev = to_msm_fbdev(helper);
 struct drm_device *dev = helper->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_framebuffer *fb = ((void*)0);
 struct drm_gem_object *bo;
 struct fb_info *fbi = ((void*)0);
 uint64_t paddr;
 uint32_t format;
 int ret, pitch;

 format = drm_mode_legacy_fb_format(sizes->surface_bpp, sizes->surface_depth);

 DBG("create fbdev: %dx%d@%d (%dx%d)", sizes->surface_width,
   sizes->surface_height, sizes->surface_bpp,
   sizes->fb_width, sizes->fb_height);

 pitch = align_pitch(sizes->surface_width, sizes->surface_bpp);
 fb = msm_alloc_stolen_fb(dev, sizes->surface_width,
   sizes->surface_height, pitch, format);

 if (IS_ERR(fb)) {
  DRM_DEV_ERROR(dev->dev, "failed to allocate fb\n");
  return PTR_ERR(fb);
 }

 bo = msm_framebuffer_bo(fb, 0);

 mutex_lock(&dev->struct_mutex);






 ret = msm_gem_get_and_pin_iova(bo, priv->kms->aspace, &paddr);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "failed to get buffer obj iova: %d\n", ret);
  goto fail_unlock;
 }

 fbi = drm_fb_helper_alloc_fbi(helper);
 if (IS_ERR(fbi)) {
  DRM_DEV_ERROR(dev->dev, "failed to allocate fb info\n");
  ret = PTR_ERR(fbi);
  goto fail_unlock;
 }

 DBG("fbi=%p, dev=%p", fbi, dev);

 fbdev->fb = fb;
 helper->fb = fb;

 fbi->fbops = &msm_fb_ops;

 drm_fb_helper_fill_info(fbi, helper, sizes);

 dev->mode_config.fb_base = paddr;

 fbi->screen_base = msm_gem_get_vaddr(bo);
 if (IS_ERR(fbi->screen_base)) {
  ret = PTR_ERR(fbi->screen_base);
  goto fail_unlock;
 }
 fbi->screen_size = bo->size;
 fbi->fix.smem_start = paddr;
 fbi->fix.smem_len = bo->size;

 DBG("par=%p, %dx%d", fbi->par, fbi->var.xres, fbi->var.yres);
 DBG("allocated %dx%d fb", fbdev->fb->width, fbdev->fb->height);

 mutex_unlock(&dev->struct_mutex);

 return 0;

fail_unlock:
 mutex_unlock(&dev->struct_mutex);
 drm_framebuffer_remove(fb);
 return ret;
}
