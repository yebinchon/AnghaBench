
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_context {int dummy; } ;
struct pipe_ctx {struct pipe_ctx* bottom_pipe; } ;



__attribute__((used)) static struct pipe_ctx *resource_get_tail_pipe(
  struct resource_context *res_ctx,
  struct pipe_ctx *head_pipe)
{
 struct pipe_ctx *tail_pipe;

 tail_pipe = head_pipe->bottom_pipe;

 while (tail_pipe) {
  head_pipe = tail_pipe;
  tail_pipe = tail_pipe->bottom_pipe;
 }

 return head_pipe;
}
