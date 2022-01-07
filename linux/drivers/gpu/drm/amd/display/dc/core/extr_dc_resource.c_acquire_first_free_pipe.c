
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource_pool {int pipe_count; TYPE_3__** dpps; int * opps; int * transforms; int * ipps; int * hubps; int * mis; int * timing_generators; } ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_5__ {int mpcc_inst; TYPE_3__* dpp; int xfm; int ipp; int hubp; int mi; } ;
struct TYPE_4__ {int opp; int tg; } ;
struct pipe_ctx {int pipe_idx; struct dc_stream_state* stream; TYPE_2__ plane_res; TYPE_1__ stream_res; } ;
struct dc_stream_state {int dummy; } ;
struct TYPE_6__ {int inst; } ;



__attribute__((used)) static int acquire_first_free_pipe(
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  struct dc_stream_state *stream)
{
 int i;

 for (i = 0; i < pool->pipe_count; i++) {
  if (!res_ctx->pipe_ctx[i].stream) {
   struct pipe_ctx *pipe_ctx = &res_ctx->pipe_ctx[i];

   pipe_ctx->stream_res.tg = pool->timing_generators[i];
   pipe_ctx->plane_res.mi = pool->mis[i];
   pipe_ctx->plane_res.hubp = pool->hubps[i];
   pipe_ctx->plane_res.ipp = pool->ipps[i];
   pipe_ctx->plane_res.xfm = pool->transforms[i];
   pipe_ctx->plane_res.dpp = pool->dpps[i];
   pipe_ctx->stream_res.opp = pool->opps[i];
   if (pool->dpps[i])
    pipe_ctx->plane_res.mpcc_inst = pool->dpps[i]->inst;
   pipe_ctx->pipe_idx = i;


   pipe_ctx->stream = stream;
   return i;
  }
 }
 return -1;
}
