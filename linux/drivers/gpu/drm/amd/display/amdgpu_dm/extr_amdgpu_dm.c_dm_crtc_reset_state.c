
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct dm_crtc_state {TYPE_1__ base; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int dm_crtc_destroy_state (struct drm_crtc*,TYPE_1__*) ;
 struct dm_crtc_state* kzalloc (int,int ) ;

__attribute__((used)) static void dm_crtc_reset_state(struct drm_crtc *crtc)
{
 struct dm_crtc_state *state;

 if (crtc->state)
  dm_crtc_destroy_state(crtc, crtc->state);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (WARN_ON(!state))
  return;

 crtc->state = &state->base;
 crtc->state->crtc = crtc;

}
