
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane_state {scalar_t__ use_pre; } ;
struct ipu_plane {int ipu_ch; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int ipu_prg_channel_configure_pending (int ) ;
 struct ipu_plane* to_ipu_plane (struct drm_plane*) ;
 struct ipu_plane_state* to_ipu_plane_state (struct drm_plane_state*) ;

bool ipu_plane_atomic_update_pending(struct drm_plane *plane)
{
 struct ipu_plane *ipu_plane = to_ipu_plane(plane);
 struct drm_plane_state *state = plane->state;
 struct ipu_plane_state *ipu_state = to_ipu_plane_state(state);


 if (!state->crtc)
  return 0;

 if (ipu_state->use_pre)
  return ipu_prg_channel_configure_pending(ipu_plane->ipu_ch);
 return 0;
}
