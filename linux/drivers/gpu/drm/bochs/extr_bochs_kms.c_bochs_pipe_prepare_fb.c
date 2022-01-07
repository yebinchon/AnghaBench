
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_simple_display_pipe {int dummy; } ;
struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_2__ {int * obj; } ;


 int DRM_GEM_VRAM_PL_FLAG_VRAM ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 int drm_gem_vram_pin (struct drm_gem_vram_object*,int ) ;

__attribute__((used)) static int bochs_pipe_prepare_fb(struct drm_simple_display_pipe *pipe,
     struct drm_plane_state *new_state)
{
 struct drm_gem_vram_object *gbo;

 if (!new_state->fb)
  return 0;
 gbo = drm_gem_vram_of_gem(new_state->fb->obj[0]);
 return drm_gem_vram_pin(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
}
