
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pipe_ctx {int stream; TYPE_5__* plane_state; } ;
struct TYPE_6__ {scalar_t__ full_update_needed; } ;
struct dc_state {TYPE_1__ commit_hints; } ;
struct TYPE_9__ {int (* set_output_transfer_func ) (struct pipe_ctx*,int ) ;int (* set_input_transfer_func ) (struct pipe_ctx*,TYPE_5__*) ;} ;
struct dc {TYPE_4__ hwss; } ;
struct TYPE_7__ {int full_update; scalar_t__ gamma_change; scalar_t__ in_transfer_func_change; } ;
struct TYPE_8__ {TYPE_2__ bits; } ;
struct TYPE_10__ {TYPE_3__ update_flags; } ;


 int dcn20_enable_plane (struct dc*,struct pipe_ctx*,struct dc_state*) ;
 int set_hdr_multiplier (struct pipe_ctx*) ;
 int stub1 (struct pipe_ctx*,TYPE_5__*) ;
 int stub2 (struct pipe_ctx*,int ) ;
 int update_dchubp_dpp (struct dc*,struct pipe_ctx*,struct dc_state*) ;

__attribute__((used)) static void dcn20_program_pipe(
  struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  struct dc_state *context)
{
 pipe_ctx->plane_state->update_flags.bits.full_update =
   context->commit_hints.full_update_needed ? 1 : pipe_ctx->plane_state->update_flags.bits.full_update;

 if (pipe_ctx->plane_state->update_flags.bits.full_update)
  dcn20_enable_plane(dc, pipe_ctx, context);

 update_dchubp_dpp(dc, pipe_ctx, context);

 set_hdr_multiplier(pipe_ctx);

 if (pipe_ctx->plane_state->update_flags.bits.full_update ||
   pipe_ctx->plane_state->update_flags.bits.in_transfer_func_change ||
   pipe_ctx->plane_state->update_flags.bits.gamma_change)
  dc->hwss.set_input_transfer_func(pipe_ctx, pipe_ctx->plane_state);







 if (pipe_ctx->plane_state->update_flags.bits.full_update)
  dc->hwss.set_output_transfer_func(pipe_ctx, pipe_ctx->stream);
}
