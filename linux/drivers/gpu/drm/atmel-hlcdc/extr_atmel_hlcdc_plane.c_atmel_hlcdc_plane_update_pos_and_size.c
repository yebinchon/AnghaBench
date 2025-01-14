
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atmel_hlcdc_plane_state {int crtc_y; int crtc_x; int src_h; int src_w; int crtc_h; int crtc_w; } ;
struct TYPE_4__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_2__ layer; } ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ memsize; scalar_t__ size; } ;
struct atmel_hlcdc_layer_desc {TYPE_1__ layout; } ;


 int ATMEL_HLCDC_LAYER_POS (int ,int ) ;
 int ATMEL_HLCDC_LAYER_SIZE (int ,int ) ;
 int atmel_hlcdc_layer_write_cfg (TYPE_2__*,scalar_t__,int ) ;
 int atmel_hlcdc_plane_setup_scaler (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ;

__attribute__((used)) static void
atmel_hlcdc_plane_update_pos_and_size(struct atmel_hlcdc_plane *plane,
          struct atmel_hlcdc_plane_state *state)
{
 const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;

 if (desc->layout.size)
  atmel_hlcdc_layer_write_cfg(&plane->layer, desc->layout.size,
     ATMEL_HLCDC_LAYER_SIZE(state->crtc_w,
              state->crtc_h));

 if (desc->layout.memsize)
  atmel_hlcdc_layer_write_cfg(&plane->layer,
     desc->layout.memsize,
     ATMEL_HLCDC_LAYER_SIZE(state->src_w,
              state->src_h));

 if (desc->layout.pos)
  atmel_hlcdc_layer_write_cfg(&plane->layer, desc->layout.pos,
     ATMEL_HLCDC_LAYER_POS(state->crtc_x,
             state->crtc_y));

 atmel_hlcdc_plane_setup_scaler(plane, state);
}
