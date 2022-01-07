
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atmel_hlcdc_plane_state {int disc_h; int disc_w; int disc_y; int disc_x; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct atmel_hlcdc_plane {TYPE_2__ layer; } ;
struct atmel_hlcdc_layer_cfg_layout {int disc_size; int disc_pos; } ;
struct TYPE_3__ {struct atmel_hlcdc_layer_cfg_layout layout; } ;


 int ATMEL_HLCDC_LAYER_DISC_POS (int ,int ) ;
 int ATMEL_HLCDC_LAYER_DISC_SIZE (int ,int ) ;
 int atmel_hlcdc_layer_write_cfg (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
atmel_hlcdc_plane_update_disc_area(struct atmel_hlcdc_plane *plane,
       struct atmel_hlcdc_plane_state *state)
{
 const struct atmel_hlcdc_layer_cfg_layout *layout;

 layout = &plane->layer.desc->layout;
 if (!layout->disc_pos || !layout->disc_size)
  return;

 atmel_hlcdc_layer_write_cfg(&plane->layer, layout->disc_pos,
    ATMEL_HLCDC_LAYER_DISC_POS(state->disc_x,
          state->disc_y));

 atmel_hlcdc_layer_write_cfg(&plane->layer, layout->disc_size,
    ATMEL_HLCDC_LAYER_DISC_SIZE(state->disc_w,
           state->disc_h));
}
