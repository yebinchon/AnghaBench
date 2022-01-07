
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_3__* dpp; } ;
struct pipe_ctx {TYPE_2__ plane_res; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* dpp_set_csc_adjustment ) (TYPE_3__*,int *) ;} ;


 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static void dcn10_set_csc_adjustment_rgb_mpo_fix(struct pipe_ctx *pipe_ctx, uint16_t *matrix)
{

 uint16_t rgb_bias = matrix[3];

 matrix[3] = 0;
 matrix[7] = 0;
 matrix[11] = 0;
 pipe_ctx->plane_res.dpp->funcs->dpp_set_csc_adjustment(pipe_ctx->plane_res.dpp, matrix);
 matrix[3] = rgb_bias;
 matrix[7] = rgb_bias;
 matrix[11] = rgb_bias;
}
