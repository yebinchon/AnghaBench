
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource_pool {int dummy; } ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {size_t pipe_idx; int * stream; } ;
struct dc {TYPE_6__* res_pool; TYPE_5__* current_state; } ;
struct TYPE_12__ {int pipe_count; } ;
struct TYPE_10__ {TYPE_3__* pipe_ctx; } ;
struct TYPE_11__ {TYPE_4__ res_ctx; } ;
struct TYPE_9__ {int * top_pipe; TYPE_2__* next_odm_pipe; TYPE_1__* bottom_pipe; } ;
struct TYPE_8__ {int pipe_idx; } ;
struct TYPE_7__ {int pipe_idx; } ;


 int ASSERT (struct pipe_ctx*) ;

__attribute__((used)) static struct pipe_ctx *dcn20_find_secondary_pipe(struct dc *dc,
  struct resource_context *res_ctx,
  const struct resource_pool *pool,
  const struct pipe_ctx *primary_pipe)
{
 struct pipe_ctx *secondary_pipe = ((void*)0);

 if (dc && primary_pipe) {
  int j;
  int preferred_pipe_idx = 0;
  if (dc->current_state->res_ctx.pipe_ctx[primary_pipe->pipe_idx].bottom_pipe) {
   preferred_pipe_idx = dc->current_state->res_ctx.pipe_ctx[primary_pipe->pipe_idx].bottom_pipe->pipe_idx;
   if (res_ctx->pipe_ctx[preferred_pipe_idx].stream == ((void*)0)) {
    secondary_pipe = &res_ctx->pipe_ctx[preferred_pipe_idx];
    secondary_pipe->pipe_idx = preferred_pipe_idx;
   }
  } else if (dc->current_state->res_ctx.pipe_ctx[primary_pipe->pipe_idx].next_odm_pipe) {
   preferred_pipe_idx = dc->current_state->res_ctx.pipe_ctx[primary_pipe->pipe_idx].next_odm_pipe->pipe_idx;
   if (res_ctx->pipe_ctx[preferred_pipe_idx].stream == ((void*)0)) {
    secondary_pipe = &res_ctx->pipe_ctx[preferred_pipe_idx];
    secondary_pipe->pipe_idx = preferred_pipe_idx;
   }
  }







  if (secondary_pipe == ((void*)0)) {
   for (j = dc->res_pool->pipe_count - 1; j >= 0; j--) {
    if (dc->current_state->res_ctx.pipe_ctx[j].top_pipe == ((void*)0)) {
     preferred_pipe_idx = j;

     if (res_ctx->pipe_ctx[preferred_pipe_idx].stream == ((void*)0)) {
      secondary_pipe = &res_ctx->pipe_ctx[preferred_pipe_idx];
      secondary_pipe->pipe_idx = preferred_pipe_idx;
      break;
     }
    }
   }
  }




  ASSERT(secondary_pipe);




  if (secondary_pipe == ((void*)0)) {
   for (j = dc->res_pool->pipe_count - 1; j >= 0; j--) {
    preferred_pipe_idx = j;

    if (res_ctx->pipe_ctx[preferred_pipe_idx].stream == ((void*)0)) {
     secondary_pipe = &res_ctx->pipe_ctx[preferred_pipe_idx];
     secondary_pipe->pipe_idx = preferred_pipe_idx;
     break;
    }
   }
  }
 }

 return secondary_pipe;
}
