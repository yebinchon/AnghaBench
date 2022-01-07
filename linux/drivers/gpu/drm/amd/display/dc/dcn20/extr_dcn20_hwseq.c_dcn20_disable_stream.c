
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_ctx {int dummy; } ;


 int dce110_disable_stream (struct pipe_ctx*) ;

void dcn20_disable_stream(struct pipe_ctx *pipe_ctx)
{
 dce110_disable_stream(pipe_ctx);
}
