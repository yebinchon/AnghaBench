
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {TYPE_2__* fb; int crtc_y; int crtc_x; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct drm_gem_vram_object {TYPE_1__ bo; } ;
struct bochs_device {int stride; } ;
struct TYPE_4__ {int format; scalar_t__* offsets; int * pitches; int * obj; } ;


 int bochs_hw_setbase (struct bochs_device*,int ,int ,int ,scalar_t__) ;
 int bochs_hw_setformat (struct bochs_device*,int ) ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;

__attribute__((used)) static void bochs_plane_update(struct bochs_device *bochs,
          struct drm_plane_state *state)
{
 struct drm_gem_vram_object *gbo;

 if (!state->fb || !bochs->stride)
  return;

 gbo = drm_gem_vram_of_gem(state->fb->obj[0]);
 bochs_hw_setbase(bochs,
    state->crtc_x,
    state->crtc_y,
    state->fb->pitches[0],
    state->fb->offsets[0] + gbo->bo.offset);
 bochs_hw_setformat(bochs, state->fb->format);
}
