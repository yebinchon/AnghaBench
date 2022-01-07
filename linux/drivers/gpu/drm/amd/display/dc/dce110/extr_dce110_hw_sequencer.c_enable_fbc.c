
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_13__ {TYPE_4__* tg; } ;
struct pipe_ctx {TYPE_5__ stream_res; TYPE_3__* stream; } ;
struct TYPE_9__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_1__ res_ctx; } ;
struct dc {TYPE_7__* ctx; struct compressor* fbc_compressor; } ;
struct TYPE_14__ {int quad_part; } ;
struct compressor {TYPE_8__* funcs; TYPE_6__ compr_surface_address; } ;
struct compr_addr_and_pitch_params {int inst; int source_view_height; int source_view_width; int member_2; int member_1; int member_0; } ;
struct TYPE_16__ {int (* enable_fbc ) (struct compressor*,struct compr_addr_and_pitch_params*) ;int (* set_fbc_invalidation_triggers ) (struct compressor*,int) ;int (* surface_address_and_pitch ) (struct compressor*,struct compr_addr_and_pitch_params*) ;} ;
struct TYPE_15__ {int fbc_gpu_addr; } ;
struct TYPE_12__ {int inst; } ;
struct TYPE_10__ {int v_addressable; int h_addressable; } ;
struct TYPE_11__ {TYPE_2__ timing; } ;


 scalar_t__ should_enable_fbc (struct dc*,struct dc_state*,size_t*) ;
 int stub1 (struct compressor*,struct compr_addr_and_pitch_params*) ;
 int stub2 (struct compressor*,int) ;
 int stub3 (struct compressor*,struct compr_addr_and_pitch_params*) ;

__attribute__((used)) static void enable_fbc(
  struct dc *dc,
  struct dc_state *context)
{
 uint32_t pipe_idx = 0;

 if (should_enable_fbc(dc, context, &pipe_idx)) {

  struct compr_addr_and_pitch_params params = {0, 0, 0};
  struct compressor *compr = dc->fbc_compressor;
  struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[pipe_idx];

  params.source_view_width = pipe_ctx->stream->timing.h_addressable;
  params.source_view_height = pipe_ctx->stream->timing.v_addressable;
  params.inst = pipe_ctx->stream_res.tg->inst;
  compr->compr_surface_address.quad_part = dc->ctx->fbc_gpu_addr;

  compr->funcs->surface_address_and_pitch(compr, &params);
  compr->funcs->set_fbc_invalidation_triggers(compr, 1);

  compr->funcs->enable_fbc(compr, &params);
 }
}
