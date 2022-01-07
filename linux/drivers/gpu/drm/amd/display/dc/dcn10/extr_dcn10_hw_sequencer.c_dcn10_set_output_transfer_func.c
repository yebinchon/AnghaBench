
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct dpp* dpp; } ;
struct pipe_ctx {TYPE_1__ plane_res; } ;
struct TYPE_11__ {int hw_points_num; } ;
struct dpp {TYPE_3__ regamma_params; TYPE_2__* funcs; } ;
struct dc_stream_state {TYPE_6__* out_transfer_func; int * ctx; } ;
struct TYPE_12__ {scalar_t__ type; scalar_t__ tf; } ;
struct TYPE_10__ {int (* dpp_program_regamma_pwl ) (struct dpp*,TYPE_3__*,int ) ;} ;


 int GAMMA_HW_POINTS_NUM ;
 int OPP_REGAMMA_BYPASS ;
 int OPP_REGAMMA_SRGB ;
 int OPP_REGAMMA_USER ;
 scalar_t__ TF_TYPE_PREDEFINED ;
 scalar_t__ TRANSFER_FUNCTION_SRGB ;
 scalar_t__ cm_helper_translate_curve_to_hw_format (TYPE_6__*,TYPE_3__*,int) ;
 int log_tf (int *,TYPE_6__*,int ) ;
 int stub1 (struct dpp*,TYPE_3__*,int ) ;
 int stub2 (struct dpp*,TYPE_3__*,int ) ;
 int stub3 (struct dpp*,TYPE_3__*,int ) ;

__attribute__((used)) static bool
dcn10_set_output_transfer_func(struct pipe_ctx *pipe_ctx,
          const struct dc_stream_state *stream)
{
 struct dpp *dpp = pipe_ctx->plane_res.dpp;

 if (dpp == ((void*)0))
  return 0;

 dpp->regamma_params.hw_points_num = GAMMA_HW_POINTS_NUM;

 if (stream->out_transfer_func &&
     stream->out_transfer_func->type == TF_TYPE_PREDEFINED &&
     stream->out_transfer_func->tf == TRANSFER_FUNCTION_SRGB)
  dpp->funcs->dpp_program_regamma_pwl(dpp, ((void*)0), OPP_REGAMMA_SRGB);




 else if (cm_helper_translate_curve_to_hw_format(
   stream->out_transfer_func,
   &dpp->regamma_params, 0)) {
  dpp->funcs->dpp_program_regamma_pwl(
    dpp,
    &dpp->regamma_params, OPP_REGAMMA_USER);
 } else
  dpp->funcs->dpp_program_regamma_pwl(dpp, ((void*)0), OPP_REGAMMA_BYPASS);

 if (stream != ((void*)0) && stream->ctx != ((void*)0) &&
   stream->out_transfer_func != ((void*)0)) {
  log_tf(stream->ctx,
    stream->out_transfer_func,
    dpp->regamma_params.hw_points_num);
 }

 return 1;
}
