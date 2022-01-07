
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct atmel_hlcdc_plane_state {TYPE_2__** dscrs; } ;
struct atmel_hlcdc_dc {int dscrpool; } ;
struct TYPE_5__ {int self; } ;
struct TYPE_4__ {struct atmel_hlcdc_dc* dev_private; } ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int dma_pool_free (int ,TYPE_2__*,int ) ;
 int drm_framebuffer_put (scalar_t__) ;
 struct atmel_hlcdc_plane_state* drm_plane_state_to_atmel_hlcdc_plane_state (struct drm_plane_state*) ;
 int kfree (struct atmel_hlcdc_plane_state*) ;

__attribute__((used)) static void atmel_hlcdc_plane_atomic_destroy_state(struct drm_plane *p,
         struct drm_plane_state *s)
{
 struct atmel_hlcdc_plane_state *state =
   drm_plane_state_to_atmel_hlcdc_plane_state(s);
 struct atmel_hlcdc_dc *dc = p->dev->dev_private;
 int i;

 for (i = 0; i < ARRAY_SIZE(state->dscrs); i++) {
  dma_pool_free(dc->dscrpool, state->dscrs[i],
         state->dscrs[i]->self);
 }

 if (s->fb)
  drm_framebuffer_put(s->fb);

 kfree(state);
}
