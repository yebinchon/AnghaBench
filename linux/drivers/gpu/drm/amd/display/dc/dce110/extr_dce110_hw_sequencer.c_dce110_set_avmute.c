
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* stream_enc; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* set_avmute ) (TYPE_3__*,int) ;} ;


 int stub1 (TYPE_3__*,int) ;

void dce110_set_avmute(struct pipe_ctx *pipe_ctx, bool enable)
{
 if (pipe_ctx != ((void*)0) && pipe_ctx->stream_res.stream_enc != ((void*)0))
  pipe_ctx->stream_res.stream_enc->funcs->set_avmute(pipe_ctx->stream_res.stream_enc, enable);
}
