
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* dpp; } ;
struct pipe_ctx {TYPE_4__ plane_res; TYPE_2__* stream; } ;
struct dpp_grph_csc_adjustment {int * temperature_matrix; int gamut_adjust_type; } ;
typedef int adjust ;
struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_8__ {int (* dpp_set_gamut_remap ) (TYPE_5__*,struct dpp_grph_csc_adjustment*) ;} ;
struct TYPE_6__ {int enable_remap; int * matrix; } ;
struct TYPE_7__ {TYPE_1__ gamut_remap_matrix; } ;


 int CSC_TEMPERATURE_MATRIX_SIZE ;
 int GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS ;
 int GRAPHICS_GAMUT_ADJUST_TYPE_SW ;
 int memset (struct dpp_grph_csc_adjustment*,int ,int) ;
 int stub1 (TYPE_5__*,struct dpp_grph_csc_adjustment*) ;

__attribute__((used)) static void dcn10_program_gamut_remap(struct pipe_ctx *pipe_ctx)
{
 int i = 0;
 struct dpp_grph_csc_adjustment adjust;
 memset(&adjust, 0, sizeof(adjust));
 adjust.gamut_adjust_type = GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS;


 if (pipe_ctx->stream->gamut_remap_matrix.enable_remap == 1) {
  adjust.gamut_adjust_type = GRAPHICS_GAMUT_ADJUST_TYPE_SW;
  for (i = 0; i < CSC_TEMPERATURE_MATRIX_SIZE; i++)
   adjust.temperature_matrix[i] =
    pipe_ctx->stream->gamut_remap_matrix.matrix[i];
 }

 pipe_ctx->plane_res.dpp->funcs->dpp_set_gamut_remap(pipe_ctx->plane_res.dpp, &adjust);
}
