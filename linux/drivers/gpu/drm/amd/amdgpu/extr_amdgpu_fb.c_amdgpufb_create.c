
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {unsigned long smem_start; void* smem_len; } ;
struct fb_info {TYPE_4__ fix; int * screen_base; TYPE_3__* apertures; void* screen_size; int * fbops; } ;
struct drm_mode_fb_cmd2 {int pixel_format; int height; int width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {unsigned long* pitches; TYPE_6__* format; } ;
struct drm_fb_helper_surface_size {int surface_bpp; int surface_depth; int surface_height; int surface_width; } ;
struct drm_fb_helper {int dummy; } ;
struct TYPE_16__ {struct drm_framebuffer* fb; } ;
struct TYPE_18__ {struct drm_framebuffer base; } ;
struct amdgpu_fbdev {TYPE_7__ helper; TYPE_9__ rfb; struct amdgpu_device* adev; } ;
struct TYPE_14__ {unsigned long vram_start; unsigned long aper_base; int aper_size; } ;
struct amdgpu_device {TYPE_8__* ddev; TYPE_5__ gmc; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_10__ {int fb_base; } ;
struct TYPE_17__ {int pdev; TYPE_1__ mode_config; } ;
struct TYPE_15__ {unsigned long depth; } ;
struct TYPE_12__ {TYPE_2__* ranges; } ;
struct TYPE_11__ {int size; int base; } ;


 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*,unsigned long) ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct fb_info*) ;
 int PTR_ERR (struct fb_info*) ;
 unsigned long amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int * amdgpu_bo_kptr (struct amdgpu_bo*) ;
 void* amdgpu_bo_size (struct amdgpu_bo*) ;
 int amdgpu_display_framebuffer_init (TYPE_8__*,TYPE_9__*,struct drm_mode_fb_cmd2*,struct drm_gem_object*) ;
 int amdgpufb_create_pinned_object (struct amdgpu_fbdev*,struct drm_mode_fb_cmd2*,struct drm_gem_object**) ;
 int amdgpufb_ops ;
 struct fb_info* drm_fb_helper_alloc_fbi (struct drm_fb_helper*) ;
 int drm_fb_helper_fill_info (struct fb_info*,TYPE_7__*,struct drm_fb_helper_surface_size*) ;
 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_framebuffer_unregister_private (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_mode_legacy_fb_format (int,int ) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int kfree (struct drm_framebuffer*) ;
 int vga_switcheroo_client_fb_set (int ,struct fb_info*) ;

__attribute__((used)) static int amdgpufb_create(struct drm_fb_helper *helper,
      struct drm_fb_helper_surface_size *sizes)
{
 struct amdgpu_fbdev *rfbdev = (struct amdgpu_fbdev *)helper;
 struct amdgpu_device *adev = rfbdev->adev;
 struct fb_info *info;
 struct drm_framebuffer *fb = ((void*)0);
 struct drm_mode_fb_cmd2 mode_cmd;
 struct drm_gem_object *gobj = ((void*)0);
 struct amdgpu_bo *abo = ((void*)0);
 int ret;
 unsigned long tmp;

 mode_cmd.width = sizes->surface_width;
 mode_cmd.height = sizes->surface_height;

 if (sizes->surface_bpp == 24)
  sizes->surface_bpp = 32;

 mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
         sizes->surface_depth);

 ret = amdgpufb_create_pinned_object(rfbdev, &mode_cmd, &gobj);
 if (ret) {
  DRM_ERROR("failed to create fbcon object %d\n", ret);
  return ret;
 }

 abo = gem_to_amdgpu_bo(gobj);


 info = drm_fb_helper_alloc_fbi(helper);
 if (IS_ERR(info)) {
  ret = PTR_ERR(info);
  goto out;
 }

 ret = amdgpu_display_framebuffer_init(adev->ddev, &rfbdev->rfb,
           &mode_cmd, gobj);
 if (ret) {
  DRM_ERROR("failed to initialize framebuffer %d\n", ret);
  goto out;
 }

 fb = &rfbdev->rfb.base;


 rfbdev->helper.fb = fb;

 info->fbops = &amdgpufb_ops;

 tmp = amdgpu_bo_gpu_offset(abo) - adev->gmc.vram_start;
 info->fix.smem_start = adev->gmc.aper_base + tmp;
 info->fix.smem_len = amdgpu_bo_size(abo);
 info->screen_base = amdgpu_bo_kptr(abo);
 info->screen_size = amdgpu_bo_size(abo);

 drm_fb_helper_fill_info(info, &rfbdev->helper, sizes);


 info->apertures->ranges[0].base = adev->ddev->mode_config.fb_base;
 info->apertures->ranges[0].size = adev->gmc.aper_size;



 if (info->screen_base == ((void*)0)) {
  ret = -ENOSPC;
  goto out;
 }

 DRM_INFO("fb mappable at 0x%lX\n", info->fix.smem_start);
 DRM_INFO("vram apper at 0x%lX\n", (unsigned long)adev->gmc.aper_base);
 DRM_INFO("size %lu\n", (unsigned long)amdgpu_bo_size(abo));
 DRM_INFO("fb depth is %d\n", fb->format->depth);
 DRM_INFO("   pitch is %d\n", fb->pitches[0]);

 vga_switcheroo_client_fb_set(adev->ddev->pdev, info);
 return 0;

out:
 if (abo) {

 }
 if (fb && ret) {
  drm_gem_object_put_unlocked(gobj);
  drm_framebuffer_unregister_private(fb);
  drm_framebuffer_cleanup(fb);
  kfree(fb);
 }
 return ret;
}
