
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_ctx {struct dc_stream_state const* stream; } ;
struct dc_stream_state {int dummy; } ;
struct TYPE_4__ {int (* program_gamut_remap ) (struct pipe_ctx*) ;} ;
struct dc {TYPE_1__ hwss; TYPE_3__* current_state; } ;
struct TYPE_5__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_6__ {TYPE_2__ res_ctx; } ;


 int MAX_PIPES ;
 int stub1 (struct pipe_ctx*) ;

bool dc_stream_set_gamut_remap(struct dc *dc, const struct dc_stream_state *stream)
{
 int i = 0;
 bool ret = 0;
 struct pipe_ctx *pipes;

 for (i = 0; i < MAX_PIPES; i++) {
  if (dc->current_state->res_ctx.pipe_ctx[i].stream == stream) {
   pipes = &dc->current_state->res_ctx.pipe_ctx[i];
   dc->hwss.program_gamut_remap(pipes);
   ret = 1;
  }
 }

 return ret;
}
