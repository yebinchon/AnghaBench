
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {int state; } ;
struct atmel_hlcdc_plane_state {struct drm_plane_state base; } ;


 int GFP_KERNEL ;
 scalar_t__ atmel_hlcdc_plane_alloc_dscrs (struct drm_plane*,struct atmel_hlcdc_plane_state*) ;
 int drm_framebuffer_get (scalar_t__) ;
 struct atmel_hlcdc_plane_state* drm_plane_state_to_atmel_hlcdc_plane_state (int ) ;
 int kfree (struct atmel_hlcdc_plane_state*) ;
 struct atmel_hlcdc_plane_state* kmemdup (struct atmel_hlcdc_plane_state*,int,int ) ;

__attribute__((used)) static struct drm_plane_state *
atmel_hlcdc_plane_atomic_duplicate_state(struct drm_plane *p)
{
 struct atmel_hlcdc_plane_state *state =
   drm_plane_state_to_atmel_hlcdc_plane_state(p->state);
 struct atmel_hlcdc_plane_state *copy;

 copy = kmemdup(state, sizeof(*state), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 if (atmel_hlcdc_plane_alloc_dscrs(p, copy)) {
  kfree(copy);
  return ((void*)0);
 }

 if (copy->base.fb)
  drm_framebuffer_get(copy->base.fb);

 return &copy->base;
}
