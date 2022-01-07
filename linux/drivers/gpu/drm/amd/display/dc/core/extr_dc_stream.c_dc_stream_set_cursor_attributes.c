
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct pipe_ctx {struct dc_stream_state* stream; } ;
struct TYPE_5__ {scalar_t__ quad_part; } ;
struct dc_cursor_attributes {TYPE_1__ address; } ;
struct dc_stream_state {struct dc_cursor_attributes cursor_attributes; TYPE_2__* ctx; } ;
struct TYPE_8__ {int (* pipe_control_lock ) (struct dc*,struct pipe_ctx*,int) ;int (* set_cursor_sdr_white_level ) (struct pipe_ctx*) ;int (* set_cursor_attribute ) (struct pipe_ctx*) ;} ;
struct dc {TYPE_4__ hwss; TYPE_3__* current_state; } ;
struct TYPE_7__ {struct resource_context res_ctx; } ;
struct TYPE_6__ {struct dc* dc; } ;


 int MAX_PIPES ;
 int delay_cursor_until_vupdate (struct pipe_ctx*,struct dc*) ;
 int dm_error (char*) ;
 int dm_output_to_console (char*) ;
 int stub1 (struct dc*,struct pipe_ctx*,int) ;
 int stub2 (struct pipe_ctx*) ;
 int stub3 (struct pipe_ctx*) ;
 int stub4 (struct dc*,struct pipe_ctx*,int) ;

bool dc_stream_set_cursor_attributes(
 struct dc_stream_state *stream,
 const struct dc_cursor_attributes *attributes)
{
 int i;
 struct dc *core_dc;
 struct resource_context *res_ctx;
 struct pipe_ctx *pipe_to_program = ((void*)0);

 if (((void*)0) == stream) {
  dm_error("DC: dc_stream is NULL!\n");
  return 0;
 }
 if (((void*)0) == attributes) {
  dm_error("DC: attributes is NULL!\n");
  return 0;
 }

 if (attributes->address.quad_part == 0) {
  dm_output_to_console("DC: Cursor address is 0!\n");
  return 0;
 }

 core_dc = stream->ctx->dc;
 res_ctx = &core_dc->current_state->res_ctx;
 stream->cursor_attributes = *attributes;

 for (i = 0; i < MAX_PIPES; i++) {
  struct pipe_ctx *pipe_ctx = &res_ctx->pipe_ctx[i];

  if (pipe_ctx->stream != stream)
   continue;

  if (!pipe_to_program) {
   pipe_to_program = pipe_ctx;

   delay_cursor_until_vupdate(pipe_ctx, core_dc);
   core_dc->hwss.pipe_control_lock(core_dc, pipe_to_program, 1);
  }

  core_dc->hwss.set_cursor_attribute(pipe_ctx);
  if (core_dc->hwss.set_cursor_sdr_white_level)
   core_dc->hwss.set_cursor_sdr_white_level(pipe_ctx);
 }

 if (pipe_to_program)
  core_dc->hwss.pipe_control_lock(core_dc, pipe_to_program, 0);

 return 1;
}
