
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_bo {int dummy; } ;
struct drm_crtc {TYPE_2__* primary; } ;
struct TYPE_4__ {TYPE_1__* fb; } ;
struct TYPE_3__ {int * obj; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_DPMS_OFF ;
 struct radeon_bo* gem_to_radeon_bo (int ) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 int radeon_crtc_dpms (struct drm_crtc*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void radeon_crtc_disable(struct drm_crtc *crtc)
{
 radeon_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
 if (crtc->primary->fb) {
  int r;
  struct radeon_bo *rbo;

  rbo = gem_to_radeon_bo(crtc->primary->fb->obj[0]);
  r = radeon_bo_reserve(rbo, 0);
  if (unlikely(r))
   DRM_ERROR("failed to reserve rbo before unpin\n");
  else {
   radeon_bo_unpin(rbo);
   radeon_bo_unreserve(rbo);
  }
 }
}
