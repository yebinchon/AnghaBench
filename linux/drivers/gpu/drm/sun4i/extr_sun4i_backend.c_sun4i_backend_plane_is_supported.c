
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;


 scalar_t__ sun4i_backend_plane_uses_frontend (struct drm_plane_state*) ;
 scalar_t__ sun4i_backend_plane_uses_scaler (struct drm_plane_state*) ;

__attribute__((used)) static bool sun4i_backend_plane_is_supported(struct drm_plane_state *state,
          bool *uses_frontend)
{
 if (sun4i_backend_plane_uses_frontend(state)) {
  *uses_frontend = 1;
  return 1;
 }

 *uses_frontend = 0;


 if (sun4i_backend_plane_uses_scaler(state))
  return 0;

 return 1;
}
