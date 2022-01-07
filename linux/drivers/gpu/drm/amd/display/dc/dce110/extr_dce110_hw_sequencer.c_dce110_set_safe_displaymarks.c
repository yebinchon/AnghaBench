
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource_pool {int underlay_pipe_index; } ;
struct resource_context {TYPE_3__* pipe_ctx; } ;
struct dce_watermarks {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
struct TYPE_7__ {TYPE_4__* mi; } ;
struct TYPE_8__ {TYPE_2__ plane_res; int * stream; } ;
struct TYPE_6__ {int (* mem_input_program_chroma_display_marks ) (TYPE_4__*,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,int ) ;int (* mem_input_program_display_marks ) (TYPE_4__*,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,int ) ;} ;


 int MAX_PIPES ;
 int MAX_WATERMARK ;
 int SAFE_NBP_MARK ;
 int stub1 (TYPE_4__*,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,int ) ;
 int stub2 (TYPE_4__*,struct dce_watermarks,struct dce_watermarks,struct dce_watermarks,int ) ;

void dce110_set_safe_displaymarks(
  struct resource_context *res_ctx,
  const struct resource_pool *pool)
{
 int i;
 int underlay_idx = pool->underlay_pipe_index;
 struct dce_watermarks max_marks = {
  MAX_WATERMARK, MAX_WATERMARK, MAX_WATERMARK, MAX_WATERMARK };
 struct dce_watermarks nbp_marks = {
  SAFE_NBP_MARK, SAFE_NBP_MARK, SAFE_NBP_MARK, SAFE_NBP_MARK };
 struct dce_watermarks min_marks = { 0, 0, 0, 0};

 for (i = 0; i < MAX_PIPES; i++) {
  if (res_ctx->pipe_ctx[i].stream == ((void*)0) || res_ctx->pipe_ctx[i].plane_res.mi == ((void*)0))
   continue;

  res_ctx->pipe_ctx[i].plane_res.mi->funcs->mem_input_program_display_marks(
    res_ctx->pipe_ctx[i].plane_res.mi,
    nbp_marks,
    max_marks,
    min_marks,
    max_marks,
    MAX_WATERMARK);

  if (i == underlay_idx)
   res_ctx->pipe_ctx[i].plane_res.mi->funcs->mem_input_program_chroma_display_marks(
    res_ctx->pipe_ctx[i].plane_res.mi,
    nbp_marks,
    max_marks,
    max_marks,
    MAX_WATERMARK);

 }
}
