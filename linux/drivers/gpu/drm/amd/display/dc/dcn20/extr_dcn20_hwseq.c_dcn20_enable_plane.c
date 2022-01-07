
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_20__ {int quad_part; } ;
struct TYPE_19__ {int quad_part; } ;
struct TYPE_18__ {scalar_t__ quad_part; } ;
struct vm_system_aperture_param {TYPE_5__ sys_high; TYPE_4__ sys_low; TYPE_3__ sys_default; } ;
struct TYPE_24__ {TYPE_10__* hubp; } ;
struct TYPE_17__ {TYPE_11__* opp; } ;
struct pipe_ctx {TYPE_9__ plane_res; TYPE_2__ stream_res; } ;
struct dc_state {int dummy; } ;
struct TYPE_21__ {int end_addr; int start_addr; } ;
struct TYPE_22__ {TYPE_6__ system_aperture; scalar_t__ valid; } ;
struct dc {TYPE_7__ vm_pa_config; int hwseq; } ;
struct TYPE_23__ {int (* hubp_set_vm_system_aperture_settings ) (TYPE_10__*,struct vm_system_aperture_param*) ;int (* hubp_init ) (TYPE_10__*) ;int (* hubp_clk_cntl ) (TYPE_10__*,int) ;} ;
struct TYPE_16__ {int (* opp_pipe_clock_control ) (TYPE_11__*,int) ;} ;
struct TYPE_15__ {TYPE_1__* funcs; } ;
struct TYPE_14__ {TYPE_8__* funcs; } ;


 int dcn20_power_on_plane (int ,struct pipe_ctx*) ;
 int stub1 (TYPE_10__*,int) ;
 int stub2 (TYPE_10__*) ;
 int stub3 (TYPE_11__*,int) ;
 int stub4 (TYPE_10__*,struct vm_system_aperture_param*) ;

void dcn20_enable_plane(
 struct dc *dc,
 struct pipe_ctx *pipe_ctx,
 struct dc_state *context)
{



 dcn20_power_on_plane(dc->hwseq, pipe_ctx);


 pipe_ctx->plane_res.hubp->funcs->hubp_clk_cntl(pipe_ctx->plane_res.hubp, 1);


 pipe_ctx->plane_res.hubp->funcs->hubp_init(pipe_ctx->plane_res.hubp);


 pipe_ctx->stream_res.opp->funcs->opp_pipe_clock_control(
   pipe_ctx->stream_res.opp,
   1);
 if (dc->vm_pa_config.valid) {
  struct vm_system_aperture_param apt;

  apt.sys_default.quad_part = 0;

  apt.sys_low.quad_part = dc->vm_pa_config.system_aperture.start_addr;
  apt.sys_high.quad_part = dc->vm_pa_config.system_aperture.end_addr;


  pipe_ctx->plane_res.hubp->funcs->hubp_set_vm_system_aperture_settings(pipe_ctx->plane_res.hubp, &apt);
 }




}
