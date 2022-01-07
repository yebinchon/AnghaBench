
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timing_generator {TYPE_4__* funcs; } ;
struct TYPE_7__ {struct timing_generator* tg; } ;
struct pipe_ctx {int plane_state; int stream; scalar_t__ top_pipe; TYPE_3__ stream_res; } ;
struct TYPE_6__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_2__ res_ctx; } ;
struct dc {TYPE_1__* res_pool; } ;
struct TYPE_8__ {int (* unlock ) (struct timing_generator*) ;int (* lock ) (struct timing_generator*) ;int (* is_tg_enabled ) (struct timing_generator*) ;} ;
struct TYPE_5__ {int pipe_count; } ;


 int stub1 (struct timing_generator*) ;
 int stub2 (struct timing_generator*) ;
 int stub3 (struct timing_generator*) ;

void lock_all_pipes(struct dc *dc,
 struct dc_state *context,
 bool lock)
{
 struct pipe_ctx *pipe_ctx;
 struct timing_generator *tg;
 int i;

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  pipe_ctx = &context->res_ctx.pipe_ctx[i];
  tg = pipe_ctx->stream_res.tg;




  if (pipe_ctx->top_pipe ||
      !pipe_ctx->stream || !pipe_ctx->plane_state ||
      !tg->funcs->is_tg_enabled(tg))
   continue;

  if (lock)
   tg->funcs->lock(tg);
  else
   tg->funcs->unlock(tg);
 }
}
