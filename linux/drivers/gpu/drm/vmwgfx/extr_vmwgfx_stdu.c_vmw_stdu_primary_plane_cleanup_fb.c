
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_plane_state {scalar_t__ cpp; int content_fb_type; int pinned; scalar_t__ surf; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int SAME_AS_DISPLAY ;
 int WARN_ON (int) ;
 int vmw_du_plane_cleanup_fb (struct drm_plane*,struct drm_plane_state*) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (struct drm_plane_state*) ;

__attribute__((used)) static void
vmw_stdu_primary_plane_cleanup_fb(struct drm_plane *plane,
      struct drm_plane_state *old_state)
{
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(old_state);

 if (vps->surf)
  WARN_ON(!vps->pinned);

 vmw_du_plane_cleanup_fb(plane, old_state);

 vps->content_fb_type = SAME_AS_DISPLAY;
 vps->cpp = 0;
}
