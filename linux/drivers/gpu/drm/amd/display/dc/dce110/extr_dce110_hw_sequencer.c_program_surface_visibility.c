
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__* tg; } ;
struct pipe_ctx {TYPE_5__ stream_res; TYPE_3__* plane_state; TYPE_2__* bottom_pipe; } ;
struct dc {int hwseq; } ;
typedef enum blnd_mode { ____Placeholder_blnd_mode } blnd_mode ;
struct TYPE_12__ {TYPE_4__* funcs; int inst; } ;
struct TYPE_10__ {int (* set_blank ) (TYPE_6__*,int) ;} ;
struct TYPE_9__ {scalar_t__ visible; } ;
struct TYPE_8__ {TYPE_1__* plane_state; int * bottom_pipe; } ;
struct TYPE_7__ {scalar_t__ visible; } ;


 int ASSERT (int ) ;
 int BLND_MODE_BLENDING ;
 int BLND_MODE_CURRENT_PIPE ;
 int BLND_MODE_OTHER_PIPE ;
 int dce_set_blender_mode (int ,int ,int) ;
 int stub1 (TYPE_6__*,int) ;

__attribute__((used)) static void program_surface_visibility(const struct dc *dc,
  struct pipe_ctx *pipe_ctx)
{
 enum blnd_mode blender_mode = BLND_MODE_CURRENT_PIPE;
 bool blank_target = 0;

 if (pipe_ctx->bottom_pipe) {


  ASSERT(pipe_ctx->bottom_pipe->bottom_pipe == ((void*)0));

  if (pipe_ctx->bottom_pipe->plane_state->visible) {
   if (pipe_ctx->plane_state->visible)
    blender_mode = BLND_MODE_BLENDING;
   else
    blender_mode = BLND_MODE_OTHER_PIPE;

  } else if (!pipe_ctx->plane_state->visible)
   blank_target = 1;

 } else if (!pipe_ctx->plane_state->visible)
  blank_target = 1;

 dce_set_blender_mode(dc->hwseq, pipe_ctx->stream_res.tg->inst, blender_mode);
 pipe_ctx->stream_res.tg->funcs->set_blank(pipe_ctx->stream_res.tg, blank_target);

}
