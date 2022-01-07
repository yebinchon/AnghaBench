
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_crtc_state {int plane_mask; scalar_t__ active; } ;
struct drm_crtc {int primary; } ;


 int EINVAL ;
 int drm_plane_mask (int ) ;

__attribute__((used)) static int ipu_crtc_atomic_check(struct drm_crtc *crtc,
     struct drm_crtc_state *state)
{
 u32 primary_plane_mask = drm_plane_mask(crtc->primary);

 if (state->active && (primary_plane_mask & state->plane_mask) == 0)
  return -EINVAL;

 return 0;
}
