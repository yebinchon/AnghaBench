
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


typedef size_t uint32_t ;
struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {unsigned int pipe_idx; TYPE_7__* plane_state; TYPE_4__* stream; } ;
struct dc_state {int stream_count; struct resource_context res_ctx; } ;
struct dc {TYPE_2__* res_pool; TYPE_1__* ctx; int fbc_compressor; } ;
struct TYPE_12__ {scalar_t__ array_mode; } ;
struct TYPE_13__ {TYPE_5__ gfx8; } ;
struct TYPE_14__ {TYPE_6__ tiling_info; } ;
struct TYPE_11__ {TYPE_3__* link; } ;
struct TYPE_10__ {scalar_t__ connector_signal; scalar_t__ psr_enabled; } ;
struct TYPE_9__ {unsigned int underlay_pipe_index; size_t pipe_count; } ;
struct TYPE_8__ {int fbc_gpu_addr; } ;


 int ASSERT (int ) ;
 scalar_t__ DC_ARRAY_LINEAR_GENERAL ;
 scalar_t__ SIGNAL_TYPE_EDP ;

__attribute__((used)) static bool should_enable_fbc(struct dc *dc,
  struct dc_state *context,
  uint32_t *pipe_idx)
{
 uint32_t i;
 struct pipe_ctx *pipe_ctx = ((void*)0);
 struct resource_context *res_ctx = &context->res_ctx;
 unsigned int underlay_idx = dc->res_pool->underlay_pipe_index;


 ASSERT(dc->fbc_compressor);


 if (!dc->ctx->fbc_gpu_addr)
  return 0;


 if (context->stream_count != 1)
  return 0;

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  if (res_ctx->pipe_ctx[i].stream) {

   pipe_ctx = &res_ctx->pipe_ctx[i];

   if (!pipe_ctx)
    continue;


   if (pipe_ctx->pipe_idx != underlay_idx) {
    *pipe_idx = i;
    break;
   }
  }
 }

 if (i == dc->res_pool->pipe_count)
  return 0;

 if (!pipe_ctx->stream->link)
  return 0;


 if (pipe_ctx->stream->link->connector_signal != SIGNAL_TYPE_EDP)
  return 0;


 if (pipe_ctx->stream->link->psr_enabled)
  return 0;


 if (!pipe_ctx->plane_state)
  return 0;


 if (pipe_ctx->plane_state->tiling_info.gfx8.array_mode == DC_ARRAY_LINEAR_GENERAL)
  return 0;

 return 1;
}
