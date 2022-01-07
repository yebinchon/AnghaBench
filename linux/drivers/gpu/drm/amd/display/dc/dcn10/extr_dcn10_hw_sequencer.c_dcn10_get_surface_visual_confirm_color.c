
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct tg_color {void* color_g_y; void* color_b_cb; void* color_r_cr; } ;
struct TYPE_3__ {int format; } ;
struct TYPE_4__ {TYPE_1__ scl_data; } ;
struct pipe_ctx {TYPE_2__ plane_res; } ;


 void* MAX_TG_COLOR_VALUE ;






void dcn10_get_surface_visual_confirm_color(
  const struct pipe_ctx *pipe_ctx,
  struct tg_color *color)
{
 uint32_t color_value = MAX_TG_COLOR_VALUE;

 switch (pipe_ctx->plane_res.scl_data.format) {
 case 129:

  color->color_r_cr = color_value;
  break;

 case 130:

  color->color_b_cb = color_value;
  break;
 case 131:

  color->color_g_y = color_value;
  break;
 case 132:

  color->color_g_y = color_value;
  color->color_r_cr = color_value;
  break;
 case 128:

  color->color_r_cr = color_value;
  color->color_b_cb = color_value;
  color->color_g_y = color_value;
  break;
 default:
  break;
 }
}
