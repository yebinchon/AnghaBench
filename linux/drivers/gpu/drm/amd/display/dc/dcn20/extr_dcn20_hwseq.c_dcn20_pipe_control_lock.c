
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ gsl_group; TYPE_4__* tg; } ;
struct pipe_ctx {TYPE_3__ stream_res; TYPE_1__* plane_state; int * bottom_pipe; scalar_t__ top_pipe; } ;
struct dc {int dummy; } ;
struct TYPE_11__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {int (* unlock ) (TYPE_4__*) ;int (* lock ) (TYPE_4__*) ;int (* triplebuffer_unlock ) (TYPE_4__*) ;int (* triplebuffer_lock ) (TYPE_4__*) ;} ;
struct TYPE_8__ {int flip_immediate; scalar_t__ triplebuffer_flips; } ;


 int dcn20_setup_gsl_group_as_lock (struct dc*,struct pipe_ctx*,int) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;
 int stub4 (TYPE_4__*) ;

void dcn20_pipe_control_lock(
 struct dc *dc,
 struct pipe_ctx *pipe,
 bool lock)
{
 bool flip_immediate = 0;




 if (pipe->top_pipe)
  return;

 if (pipe->plane_state != ((void*)0))
  flip_immediate = pipe->plane_state->flip_immediate;




 if (lock && pipe->bottom_pipe != ((void*)0))
  if ((flip_immediate && pipe->stream_res.gsl_group == 0) ||
      (!flip_immediate && pipe->stream_res.gsl_group > 0))
   dcn20_setup_gsl_group_as_lock(dc, pipe, flip_immediate);

 if (pipe->plane_state != ((void*)0) && pipe->plane_state->triplebuffer_flips) {
  if (lock)
   pipe->stream_res.tg->funcs->triplebuffer_lock(pipe->stream_res.tg);
  else
   pipe->stream_res.tg->funcs->triplebuffer_unlock(pipe->stream_res.tg);
 } else {
  if (lock)
   pipe->stream_res.tg->funcs->lock(pipe->stream_res.tg);
  else
   pipe->stream_res.tg->funcs->unlock(pipe->stream_res.tg);
 }
}
