
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int fb; } ;
struct drm_plane {int dummy; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_2__ {int obj; } ;


 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;
 TYPE_1__* to_vbox_framebuffer (int ) ;

__attribute__((used)) static void vbox_primary_cleanup_fb(struct drm_plane *plane,
        struct drm_plane_state *old_state)
{
 struct drm_gem_vram_object *gbo;

 if (!old_state->fb)
  return;

 gbo = drm_gem_vram_of_gem(to_vbox_framebuffer(old_state->fb)->obj);
 drm_gem_vram_unpin(gbo);
}
