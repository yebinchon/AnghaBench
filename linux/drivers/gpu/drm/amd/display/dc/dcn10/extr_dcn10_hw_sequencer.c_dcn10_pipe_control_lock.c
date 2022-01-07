
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* tg; } ;
struct pipe_ctx {TYPE_3__ stream_res; scalar_t__ top_pipe; } ;
struct TYPE_6__ {scalar_t__ sanity_checks; } ;
struct dc {TYPE_1__ debug; } ;
struct TYPE_9__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int (* unlock ) (TYPE_4__*) ;int (* lock ) (TYPE_4__*) ;} ;


 int dcn10_verify_allow_pstate_change_high (struct dc*) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;

__attribute__((used)) static void dcn10_pipe_control_lock(
 struct dc *dc,
 struct pipe_ctx *pipe,
 bool lock)
{



 if (pipe->top_pipe)
  return;

 if (dc->debug.sanity_checks)
  dcn10_verify_allow_pstate_change_high(dc);

 if (lock)
  pipe->stream_res.tg->funcs->lock(pipe->stream_res.tg);
 else
  pipe->stream_res.tg->funcs->unlock(pipe->stream_res.tg);

 if (dc->debug.sanity_checks)
  dcn10_verify_allow_pstate_change_high(dc);
}
