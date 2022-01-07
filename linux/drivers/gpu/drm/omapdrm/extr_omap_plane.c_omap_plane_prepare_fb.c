
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int fb; } ;
struct drm_plane {int dummy; } ;


 int omap_framebuffer_pin (int ) ;

__attribute__((used)) static int omap_plane_prepare_fb(struct drm_plane *plane,
     struct drm_plane_state *new_state)
{
 if (!new_state->fb)
  return 0;

 return omap_framebuffer_pin(new_state->fb);
}
