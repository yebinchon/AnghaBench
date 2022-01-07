
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_vram_object {int dummy; } ;
struct drm_framebuffer {int * obj; } ;
struct drm_crtc {TYPE_1__* primary; } ;
struct TYPE_2__ {struct drm_framebuffer* fb; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_DPMS_OFF ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;
 int mga_crtc_dpms (struct drm_crtc*,int ) ;

__attribute__((used)) static void mga_crtc_disable(struct drm_crtc *crtc)
{
 DRM_DEBUG_KMS("\n");
 mga_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
 if (crtc->primary->fb) {
  struct drm_framebuffer *fb = crtc->primary->fb;
  struct drm_gem_vram_object *gbo =
   drm_gem_vram_of_gem(fb->obj[0]);
  drm_gem_vram_unpin(gbo);
 }
 crtc->primary->fb = ((void*)0);
}
