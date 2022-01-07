
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ audio; scalar_t__ stream_enc; } ;
struct pipe_ctx {scalar_t__ clock_source; TYPE_3__* stream; TYPE_1__ stream_res; } ;
struct TYPE_11__ {scalar_t__ sink; scalar_t__ signal; int dpms_off; TYPE_2__* link; } ;
struct TYPE_10__ {int link_state_valid; } ;


 scalar_t__ is_hdr_static_meta_changed (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ is_timing_changed (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ is_vsc_info_packet_changed (TYPE_3__*,TYPE_3__*) ;

bool pipe_need_reprogram(
  struct pipe_ctx *pipe_ctx_old,
  struct pipe_ctx *pipe_ctx)
{
 if (!pipe_ctx_old->stream)
  return 0;

 if (pipe_ctx_old->stream->sink != pipe_ctx->stream->sink)
  return 1;

 if (pipe_ctx_old->stream->signal != pipe_ctx->stream->signal)
  return 1;

 if (pipe_ctx_old->stream_res.audio != pipe_ctx->stream_res.audio)
  return 1;

 if (pipe_ctx_old->clock_source != pipe_ctx->clock_source
   && pipe_ctx_old->stream != pipe_ctx->stream)
  return 1;

 if (pipe_ctx_old->stream_res.stream_enc != pipe_ctx->stream_res.stream_enc)
  return 1;

 if (is_timing_changed(pipe_ctx_old->stream, pipe_ctx->stream))
  return 1;

 if (is_hdr_static_meta_changed(pipe_ctx_old->stream, pipe_ctx->stream))
  return 1;

 if (pipe_ctx_old->stream->dpms_off != pipe_ctx->stream->dpms_off)
  return 1;

 if (is_vsc_info_packet_changed(pipe_ctx_old->stream, pipe_ctx->stream))
  return 1;

 if (0 == pipe_ctx_old->stream->link->link_state_valid &&
  0 == pipe_ctx_old->stream->dpms_off)
  return 1;

 return 0;
}
