
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_2__* state; } ;
struct TYPE_3__ {int visible; } ;
struct atmel_hlcdc_plane_state {TYPE_1__ base; } ;
struct atmel_hlcdc_plane {int layer; } ;
struct TYPE_4__ {int fb; int crtc; } ;


 int ATMEL_HLCDC_LAYER_A2Q ;
 int ATMEL_HLCDC_LAYER_CHER ;
 int ATMEL_HLCDC_LAYER_CHSR ;
 int ATMEL_HLCDC_LAYER_EN ;
 int ATMEL_HLCDC_LAYER_IER ;
 int ATMEL_HLCDC_LAYER_OVR_IRQ (int) ;
 int ATMEL_HLCDC_LAYER_UPDATE ;
 int atmel_hlcdc_layer_read_reg (int *,int ) ;
 int atmel_hlcdc_layer_write_reg (int *,int ,int) ;
 int atmel_hlcdc_plane_atomic_disable (struct drm_plane*,struct drm_plane_state*) ;
 int atmel_hlcdc_plane_update_buffers (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 int atmel_hlcdc_plane_update_clut (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 int atmel_hlcdc_plane_update_disc_area (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 int atmel_hlcdc_plane_update_format (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 int atmel_hlcdc_plane_update_general_settings (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 int atmel_hlcdc_plane_update_pos_and_size (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;
 struct atmel_hlcdc_plane_state* drm_plane_state_to_atmel_hlcdc_plane_state (TYPE_2__*) ;
 struct atmel_hlcdc_plane* drm_plane_to_atmel_hlcdc_plane (struct drm_plane*) ;

__attribute__((used)) static void atmel_hlcdc_plane_atomic_update(struct drm_plane *p,
         struct drm_plane_state *old_s)
{
 struct atmel_hlcdc_plane *plane = drm_plane_to_atmel_hlcdc_plane(p);
 struct atmel_hlcdc_plane_state *state =
   drm_plane_state_to_atmel_hlcdc_plane_state(p->state);
 u32 sr;

 if (!p->state->crtc || !p->state->fb)
  return;

 if (!state->base.visible) {
  atmel_hlcdc_plane_atomic_disable(p, old_s);
  return;
 }

 atmel_hlcdc_plane_update_pos_and_size(plane, state);
 atmel_hlcdc_plane_update_general_settings(plane, state);
 atmel_hlcdc_plane_update_format(plane, state);
 atmel_hlcdc_plane_update_clut(plane, state);
 atmel_hlcdc_plane_update_buffers(plane, state);
 atmel_hlcdc_plane_update_disc_area(plane, state);


 atmel_hlcdc_layer_write_reg(&plane->layer, ATMEL_HLCDC_LAYER_IER,
        ATMEL_HLCDC_LAYER_OVR_IRQ(0) |
        ATMEL_HLCDC_LAYER_OVR_IRQ(1) |
        ATMEL_HLCDC_LAYER_OVR_IRQ(2));


 sr = atmel_hlcdc_layer_read_reg(&plane->layer, ATMEL_HLCDC_LAYER_CHSR);
 atmel_hlcdc_layer_write_reg(&plane->layer, ATMEL_HLCDC_LAYER_CHER,
   ATMEL_HLCDC_LAYER_UPDATE |
   (sr & ATMEL_HLCDC_LAYER_EN ?
    ATMEL_HLCDC_LAYER_A2Q : ATMEL_HLCDC_LAYER_EN));
}
