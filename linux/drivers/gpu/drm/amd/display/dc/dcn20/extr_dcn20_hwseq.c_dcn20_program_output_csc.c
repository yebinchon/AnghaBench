
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


typedef int uint16_t ;
struct TYPE_9__ {TYPE_2__* hubp; } ;
struct pipe_ctx {TYPE_5__* stream; TYPE_3__ plane_res; } ;
struct mpc {TYPE_6__* funcs; } ;
struct dc {TYPE_1__* res_pool; } ;
typedef enum mpc_output_csc_mode { ____Placeholder_mpc_output_csc_mode } mpc_output_csc_mode ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_12__ {int (* set_ocsc_default ) (struct mpc*,int,int,int) ;int (* set_output_csc ) (struct mpc*,int,int *,int) ;int (* power_on_mpc_mem_pwr ) (struct mpc*,int,int) ;} ;
struct TYPE_10__ {int enable_adjustment; } ;
struct TYPE_11__ {TYPE_4__ csc_color_matrix; } ;
struct TYPE_8__ {int inst; } ;
struct TYPE_7__ {struct mpc* mpc; } ;


 int MPC_OUTPUT_CSC_COEF_A ;
 int stub1 (struct mpc*,int,int) ;
 int stub2 (struct mpc*,int,int *,int) ;
 int stub3 (struct mpc*,int,int,int) ;

void dcn20_program_output_csc(struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  enum dc_color_space colorspace,
  uint16_t *matrix,
  int opp_id)
{
 struct mpc *mpc = dc->res_pool->mpc;
 enum mpc_output_csc_mode ocsc_mode = MPC_OUTPUT_CSC_COEF_A;
 int mpcc_id = pipe_ctx->plane_res.hubp->inst;

 if (mpc->funcs->power_on_mpc_mem_pwr)
  mpc->funcs->power_on_mpc_mem_pwr(mpc, mpcc_id, 1);

 if (pipe_ctx->stream->csc_color_matrix.enable_adjustment == 1) {
  if (mpc->funcs->set_output_csc != ((void*)0))
   mpc->funcs->set_output_csc(mpc,
     opp_id,
     matrix,
     ocsc_mode);
 } else {
  if (mpc->funcs->set_ocsc_default != ((void*)0))
   mpc->funcs->set_ocsc_default(mpc,
     opp_id,
     colorspace,
     ocsc_mode);
 }
}
