
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct dc {int dummy; } ;
struct TYPE_12__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* lock_doublebuffer_disable ) (TYPE_3__*) ;int (* wait_for_state ) (TYPE_3__*,int ) ;int (* unlock ) (TYPE_3__*) ;int (* lock ) (TYPE_3__*) ;int (* lock_doublebuffer_enable ) (TYPE_3__*) ;} ;


 int CRTC_STATE_VACTIVE ;
 int CRTC_STATE_VBLANK ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*,int ) ;
 int stub5 (TYPE_3__*,int ) ;
 int stub6 (TYPE_3__*,int ) ;
 int stub7 (TYPE_3__*) ;

void dcn20_pipe_control_lock_global(
  struct dc *dc,
  struct pipe_ctx *pipe,
  bool lock)
{
 if (lock) {
  pipe->stream_res.tg->funcs->lock_doublebuffer_enable(
    pipe->stream_res.tg);
  pipe->stream_res.tg->funcs->lock(pipe->stream_res.tg);
 } else {
  pipe->stream_res.tg->funcs->unlock(pipe->stream_res.tg);
  pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
    CRTC_STATE_VACTIVE);
  pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
    CRTC_STATE_VBLANK);
  pipe->stream_res.tg->funcs->wait_for_state(pipe->stream_res.tg,
    CRTC_STATE_VACTIVE);
  pipe->stream_res.tg->funcs->lock_doublebuffer_disable(
    pipe->stream_res.tg);
 }
}
