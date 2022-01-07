
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tg_color {int color_r_cr; int color_b_cb; int color_g_y; } ;
struct TYPE_5__ {int format; } ;
struct TYPE_6__ {TYPE_1__ scl_data; } ;
struct pipe_ctx {TYPE_4__* stream; TYPE_2__ plane_res; struct pipe_ctx* top_pipe; } ;
struct TYPE_8__ {TYPE_3__* out_transfer_func; } ;
struct TYPE_7__ {int tf; } ;


 int MAX_TG_COLOR_VALUE ;


 int TRANSFER_FUNCTION_GAMMA22 ;
 int TRANSFER_FUNCTION_PQ ;

void dcn10_get_hdr_visual_confirm_color(
  struct pipe_ctx *pipe_ctx,
  struct tg_color *color)
{
 uint32_t color_value = MAX_TG_COLOR_VALUE;


 struct pipe_ctx *top_pipe_ctx = pipe_ctx;

 while (top_pipe_ctx->top_pipe != ((void*)0))
  top_pipe_ctx = top_pipe_ctx->top_pipe;

 switch (top_pipe_ctx->plane_res.scl_data.format) {
 case 129:
  if (top_pipe_ctx->stream->out_transfer_func->tf == TRANSFER_FUNCTION_PQ) {

   color->color_r_cr = color_value;
  }
  break;
 case 128:
  if (top_pipe_ctx->stream->out_transfer_func->tf == TRANSFER_FUNCTION_PQ) {

   color->color_b_cb = color_value;
  } else if (top_pipe_ctx->stream->out_transfer_func->tf == TRANSFER_FUNCTION_GAMMA22) {

   color->color_g_y = color_value;
  }
  break;
 default:

  color->color_r_cr = color_value/2;
  color->color_b_cb = color_value/2;
  color->color_g_y = color_value/2;
  break;
 }
}
