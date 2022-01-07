
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timing_generator {TYPE_6__* funcs; } ;
struct pipe_ctx {struct dc_stream_state const* stream; } ;
struct dc_stream_state {int dummy; } ;
struct TYPE_12__ {int (* wait_for_mpcc_disconnect ) (struct dc*,TYPE_7__*,struct pipe_ctx*) ;} ;
struct dc {TYPE_7__* res_pool; TYPE_5__ hwss; TYPE_4__* current_state; TYPE_2__* hwseq; } ;
struct TYPE_14__ {int pipe_count; } ;
struct TYPE_13__ {int (* is_optc_underflow_occurred ) (struct timing_generator*) ;int (* clear_optc_underflow ) (struct timing_generator*) ;int (* set_blank_data_double_buffer ) (struct timing_generator*,int) ;} ;
struct TYPE_10__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_11__ {TYPE_3__ res_ctx; } ;
struct TYPE_8__ {int false_optc_underflow; } ;
struct TYPE_9__ {TYPE_1__ wa; } ;


 int stub1 (struct timing_generator*) ;
 int stub2 (struct dc*,TYPE_7__*,struct pipe_ctx*) ;
 int stub3 (struct timing_generator*,int) ;
 int stub4 (struct timing_generator*) ;
 int stub5 (struct timing_generator*) ;

__attribute__((used)) static void false_optc_underflow_wa(
  struct dc *dc,
  const struct dc_stream_state *stream,
  struct timing_generator *tg)
{
 int i;
 bool underflow;

 if (!dc->hwseq->wa.false_optc_underflow)
  return;

 underflow = tg->funcs->is_optc_underflow_occurred(tg);

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct pipe_ctx *old_pipe_ctx = &dc->current_state->res_ctx.pipe_ctx[i];

  if (old_pipe_ctx->stream != stream)
   continue;

  dc->hwss.wait_for_mpcc_disconnect(dc, dc->res_pool, old_pipe_ctx);
 }

 if (tg->funcs->set_blank_data_double_buffer)
  tg->funcs->set_blank_data_double_buffer(tg, 1);

 if (tg->funcs->is_optc_underflow_occurred(tg) && !underflow)
  tg->funcs->clear_optc_underflow(tg);
}
