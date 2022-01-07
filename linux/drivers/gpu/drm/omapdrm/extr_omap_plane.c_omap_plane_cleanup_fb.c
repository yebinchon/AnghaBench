
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {int dummy; } ;


 int omap_framebuffer_unpin (scalar_t__) ;

__attribute__((used)) static void omap_plane_cleanup_fb(struct drm_plane *plane,
      struct drm_plane_state *old_state)
{
 if (old_state->fb)
  omap_framebuffer_unpin(old_state->fb);
}
