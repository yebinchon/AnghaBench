
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_vram_object {int dummy; } ;
struct drm_framebuffer {int * obj; } ;
struct drm_crtc {TYPE_2__* primary; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {TYPE_1__* fb; } ;
struct TYPE_3__ {int * obj; } ;


 int DRM_GEM_VRAM_PL_FLAG_VRAM ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 scalar_t__ drm_gem_vram_offset (struct drm_gem_vram_object*) ;
 int drm_gem_vram_pin (struct drm_gem_vram_object*,int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;
 int mga_set_start_address (struct drm_crtc*,int ) ;

__attribute__((used)) static int mga_crtc_do_set_base(struct drm_crtc *crtc,
    struct drm_framebuffer *fb,
    int x, int y, int atomic)
{
 struct drm_gem_vram_object *gbo;
 int ret;
 s64 gpu_addr;

 if (!atomic && fb) {
  gbo = drm_gem_vram_of_gem(fb->obj[0]);
  drm_gem_vram_unpin(gbo);
 }

 gbo = drm_gem_vram_of_gem(crtc->primary->fb->obj[0]);

 ret = drm_gem_vram_pin(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
 if (ret)
  return ret;
 gpu_addr = drm_gem_vram_offset(gbo);
 if (gpu_addr < 0) {
  ret = (int)gpu_addr;
  goto err_drm_gem_vram_unpin;
 }

 mga_set_start_address(crtc, (u32)gpu_addr);

 return 0;

err_drm_gem_vram_unpin:
 drm_gem_vram_unpin(gbo);
 return ret;
}
