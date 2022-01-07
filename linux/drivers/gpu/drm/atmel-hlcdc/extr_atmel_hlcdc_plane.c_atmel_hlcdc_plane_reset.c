
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane {TYPE_1__* dev; int * state; } ;
struct TYPE_4__ {scalar_t__ fb; } ;
struct atmel_hlcdc_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,TYPE_2__*) ;
 scalar_t__ atmel_hlcdc_plane_alloc_dscrs (struct drm_plane*,struct atmel_hlcdc_plane_state*) ;
 int dev_err (int ,char*) ;
 int drm_framebuffer_put (scalar_t__) ;
 struct atmel_hlcdc_plane_state* drm_plane_state_to_atmel_hlcdc_plane_state (int *) ;
 int kfree (struct atmel_hlcdc_plane_state*) ;
 struct atmel_hlcdc_plane_state* kzalloc (int,int ) ;

__attribute__((used)) static void atmel_hlcdc_plane_reset(struct drm_plane *p)
{
 struct atmel_hlcdc_plane_state *state;

 if (p->state) {
  state = drm_plane_state_to_atmel_hlcdc_plane_state(p->state);

  if (state->base.fb)
   drm_framebuffer_put(state->base.fb);

  kfree(state);
  p->state = ((void*)0);
 }

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  if (atmel_hlcdc_plane_alloc_dscrs(p, state)) {
   kfree(state);
   dev_err(p->dev->dev,
    "Failed to allocate initial plane state\n");
   return;
  }
  __drm_atomic_helper_plane_reset(p, &state->base);
 }
}
