
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_ctx {TYPE_2__* stream; } ;
struct TYPE_6__ {int (* set_avmute ) (struct pipe_ctx*,int) ;} ;
struct dc {TYPE_3__ hwss; } ;
struct TYPE_5__ {int signal; TYPE_1__* ctx; } ;
struct TYPE_4__ {struct dc* dc; } ;


 int dc_is_hdmi_signal (int ) ;
 int stub1 (struct pipe_ctx*,int) ;

void core_link_set_avmute(struct pipe_ctx *pipe_ctx, bool enable)
{
 struct dc *core_dc = pipe_ctx->stream->ctx->dc;

 if (!dc_is_hdmi_signal(pipe_ctx->stream->signal))
  return;

 core_dc->hwss.set_avmute(pipe_ctx, enable);
}
