
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tg_color {int color_g_y; int color_r_cr; int member_0; } ;
struct stream_resource {TYPE_4__* tg; TYPE_5__* abm; } ;
struct pipe_ctx {struct dc_stream_state* stream; struct stream_resource stream_res; } ;
struct TYPE_10__ {scalar_t__ pixel_encoding; } ;
struct dc_stream_state {int output_color_space; int abm_level; TYPE_1__ timing; } ;
struct dc {int dummy; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_14__ {TYPE_2__* funcs; } ;
struct TYPE_13__ {TYPE_3__* funcs; scalar_t__ inst; } ;
struct TYPE_12__ {int (* set_blank ) (TYPE_4__*,int) ;int (* set_blank_color ) (TYPE_4__*,struct tg_color*) ;} ;
struct TYPE_11__ {int (* set_abm_immediate_disable ) (TYPE_5__*) ;int (* set_abm_level ) (TYPE_5__*,int ) ;int (* set_pipe ) (TYPE_5__*,scalar_t__) ;} ;


 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 int color_space_to_black_color (struct dc*,int,struct tg_color*) ;
 int stub1 (TYPE_4__*,struct tg_color*) ;
 int stub2 (TYPE_4__*,int) ;
 int stub3 (TYPE_5__*,scalar_t__) ;
 int stub4 (TYPE_5__*,int ) ;
 int stub5 (TYPE_5__*) ;
 int stub6 (TYPE_4__*,int) ;

__attribute__((used)) static void dcn10_blank_pixel_data(
  struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  bool blank)
{
 enum dc_color_space color_space;
 struct tg_color black_color = {0};
 struct stream_resource *stream_res = &pipe_ctx->stream_res;
 struct dc_stream_state *stream = pipe_ctx->stream;


 color_space = stream->output_color_space;
 color_space_to_black_color(dc, color_space, &black_color);






 if (stream->timing.pixel_encoding == PIXEL_ENCODING_YCBCR420)
  black_color.color_r_cr = black_color.color_g_y;


 if (stream_res->tg->funcs->set_blank_color)
  stream_res->tg->funcs->set_blank_color(
    stream_res->tg,
    &black_color);

 if (!blank) {
  if (stream_res->tg->funcs->set_blank)
   stream_res->tg->funcs->set_blank(stream_res->tg, blank);
  if (stream_res->abm) {
   stream_res->abm->funcs->set_pipe(stream_res->abm, stream_res->tg->inst + 1);
   stream_res->abm->funcs->set_abm_level(stream_res->abm, stream->abm_level);
  }
 } else if (blank) {
  if (stream_res->abm)
   stream_res->abm->funcs->set_abm_immediate_disable(stream_res->abm);
  if (stream_res->tg->funcs->set_blank)
   stream_res->tg->funcs->set_blank(stream_res->tg, blank);
 }
}
