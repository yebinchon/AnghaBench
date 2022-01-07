
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct tg_color {void* color_g_y; void* color_b_cb; void* color_r_cr; } ;
struct TYPE_8__ {int format; } ;
struct TYPE_5__ {TYPE_4__ scl_data; } ;
struct TYPE_7__ {TYPE_2__* tg; } ;
struct pipe_ctx {TYPE_1__ plane_res; TYPE_3__ stream_res; } ;
struct TYPE_6__ {int inst; } ;


 int MAX_TG_COLOR_VALUE ;






__attribute__((used)) static void get_surface_visual_confirm_color(const struct pipe_ctx *pipe_ctx,
  struct tg_color *color)
{
 uint32_t color_value = MAX_TG_COLOR_VALUE * (4 - pipe_ctx->stream_res.tg->inst) / 4;

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
