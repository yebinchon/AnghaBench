
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_10__ {TYPE_5__* dpp; } ;
struct pipe_ctx {TYPE_4__ plane_res; TYPE_2__* stream; } ;
struct dc {int dummy; } ;
typedef scalar_t__ int16_t ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_11__ {TYPE_3__* funcs; } ;
struct TYPE_9__ {int (* dpp_set_csc_default ) (TYPE_5__*,int) ;int (* dpp_set_csc_adjustment ) (TYPE_5__*,scalar_t__*) ;} ;
struct TYPE_7__ {int enable_adjustment; } ;
struct TYPE_8__ {TYPE_1__ csc_color_matrix; } ;


 scalar_t__ dcn10_is_rear_mpo_fix_required (struct pipe_ctx*,int) ;
 int dcn10_set_csc_adjustment_rgb_mpo_fix (struct pipe_ctx*,scalar_t__*) ;
 int stub1 (TYPE_5__*,scalar_t__*) ;
 int stub2 (TYPE_5__*,int) ;

__attribute__((used)) static void dcn10_program_output_csc(struct dc *dc,
  struct pipe_ctx *pipe_ctx,
  enum dc_color_space colorspace,
  uint16_t *matrix,
  int opp_id)
{
 if (pipe_ctx->stream->csc_color_matrix.enable_adjustment == 1) {
  if (pipe_ctx->plane_res.dpp->funcs->dpp_set_csc_adjustment != ((void*)0)) {
   int16_t rgb_bias = matrix[3];


   if (rgb_bias > 0 && dcn10_is_rear_mpo_fix_required(pipe_ctx, colorspace)) {
    dcn10_set_csc_adjustment_rgb_mpo_fix(pipe_ctx, matrix);
   } else {
    pipe_ctx->plane_res.dpp->funcs->dpp_set_csc_adjustment(pipe_ctx->plane_res.dpp, matrix);
   }
  }
 } else {
  if (pipe_ctx->plane_res.dpp->funcs->dpp_set_csc_default != ((void*)0))
   pipe_ctx->plane_res.dpp->funcs->dpp_set_csc_default(pipe_ctx->plane_res.dpp, colorspace);
 }
}
