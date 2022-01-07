
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {TYPE_2__* crtc; int fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {int event; } ;


 scalar_t__ WARN_ON (int) ;
 int tilcdc_crtc_update_fb (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void tilcdc_plane_atomic_update(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;

 if (!state->crtc)
  return;

 if (WARN_ON(!state->fb || !state->crtc->state))
  return;

 tilcdc_crtc_update_fb(state->crtc,
         state->fb,
         state->crtc->state->event);
}
