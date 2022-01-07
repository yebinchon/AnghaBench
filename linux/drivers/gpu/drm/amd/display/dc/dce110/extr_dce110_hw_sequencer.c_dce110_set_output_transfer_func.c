
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hw_points_num; } ;
struct transform {TYPE_2__* funcs; TYPE_3__ regamma_params; } ;
struct TYPE_6__ {struct transform* xfm; } ;
struct pipe_ctx {TYPE_1__ plane_res; } ;
struct dc_stream_state {TYPE_4__* out_transfer_func; } ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ tf; } ;
struct TYPE_7__ {int (* opp_power_on_regamma_lut ) (struct transform*,int) ;int (* opp_set_regamma_mode ) (struct transform*,int ) ;int (* opp_program_regamma_pwl ) (struct transform*,TYPE_3__*) ;} ;


 int GAMMA_HW_POINTS_NUM ;
 int OPP_REGAMMA_BYPASS ;
 int OPP_REGAMMA_SRGB ;
 int OPP_REGAMMA_USER ;
 scalar_t__ TF_TYPE_PREDEFINED ;
 scalar_t__ TRANSFER_FUNCTION_SRGB ;
 scalar_t__ dce110_translate_regamma_to_hw_format (TYPE_4__*,TYPE_3__*) ;
 int stub1 (struct transform*,int) ;
 int stub2 (struct transform*,int ) ;
 int stub3 (struct transform*,TYPE_3__*) ;
 int stub4 (struct transform*,int ) ;
 int stub5 (struct transform*,int ) ;
 int stub6 (struct transform*,int) ;

__attribute__((used)) static bool
dce110_set_output_transfer_func(struct pipe_ctx *pipe_ctx,
    const struct dc_stream_state *stream)
{
 struct transform *xfm = pipe_ctx->plane_res.xfm;

 xfm->funcs->opp_power_on_regamma_lut(xfm, 1);
 xfm->regamma_params.hw_points_num = GAMMA_HW_POINTS_NUM;

 if (stream->out_transfer_func &&
     stream->out_transfer_func->type == TF_TYPE_PREDEFINED &&
     stream->out_transfer_func->tf == TRANSFER_FUNCTION_SRGB) {
  xfm->funcs->opp_set_regamma_mode(xfm, OPP_REGAMMA_SRGB);
 } else if (dce110_translate_regamma_to_hw_format(stream->out_transfer_func,
        &xfm->regamma_params)) {
  xfm->funcs->opp_program_regamma_pwl(xfm, &xfm->regamma_params);
  xfm->funcs->opp_set_regamma_mode(xfm, OPP_REGAMMA_USER);
 } else {
  xfm->funcs->opp_set_regamma_mode(xfm, OPP_REGAMMA_BYPASS);
 }

 xfm->funcs->opp_power_on_regamma_lut(xfm, 0);

 return 1;
}
