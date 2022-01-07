
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_ctx {TYPE_3__* stream; } ;
struct dc_state {int dummy; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_6__ {int signal; TYPE_2__* link; } ;
struct TYPE_4__ {int link_active; } ;
struct TYPE_5__ {TYPE_1__ link_status; } ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int enable_link_dp (struct dc_state*,struct pipe_ctx*) ;
 int enable_link_dp_mst (struct dc_state*,struct pipe_ctx*) ;
 int enable_link_edp (struct dc_state*,struct pipe_ctx*) ;
 int enable_link_hdmi (struct pipe_ctx*) ;
 int enable_link_lvds (struct pipe_ctx*) ;
 int msleep (int) ;

__attribute__((used)) static enum dc_status enable_link(
  struct dc_state *state,
  struct pipe_ctx *pipe_ctx)
{
 enum dc_status status = DC_ERROR_UNEXPECTED;
 switch (pipe_ctx->stream->signal) {
 case 135:
  status = enable_link_dp(state, pipe_ctx);
  break;
 case 131:
  status = enable_link_edp(state, pipe_ctx);
  break;
 case 134:
  status = enable_link_dp_mst(state, pipe_ctx);
  msleep(200);
  break;
 case 132:
 case 133:
 case 130:
  enable_link_hdmi(pipe_ctx);
  status = DC_OK;
  break;
 case 129:
  enable_link_lvds(pipe_ctx);
  status = DC_OK;
  break;
 case 128:
  status = DC_OK;
  break;
 default:
  break;
 }

 if (status == DC_OK)
  pipe_ctx->stream->link->link_status.link_active = 1;

 return status;
}
