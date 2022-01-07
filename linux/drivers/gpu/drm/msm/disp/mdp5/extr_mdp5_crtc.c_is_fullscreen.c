
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {scalar_t__ crtc_x; scalar_t__ crtc_y; scalar_t__ crtc_w; scalar_t__ crtc_h; } ;
struct TYPE_2__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;



__attribute__((used)) static bool is_fullscreen(struct drm_crtc_state *cstate,
  struct drm_plane_state *pstate)
{
 return (pstate->crtc_x <= 0) && (pstate->crtc_y <= 0) &&
  ((pstate->crtc_x + pstate->crtc_w) >= cstate->mode.hdisplay) &&
  ((pstate->crtc_y + pstate->crtc_h) >= cstate->mode.vdisplay);
}
