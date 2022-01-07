
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct crtc_position {int dummy; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* get_position ) (TYPE_3__*,struct crtc_position*) ;} ;


 int stub1 (TYPE_3__*,struct crtc_position*) ;

__attribute__((used)) static void get_position(struct pipe_ctx **pipe_ctx,
  int num_pipes,
  struct crtc_position *position)
{
 int i = 0;



 for (i = 0; i < num_pipes; i++)
  pipe_ctx[i]->stream_res.tg->funcs->get_position(pipe_ctx[i]->stream_res.tg, position);
}
