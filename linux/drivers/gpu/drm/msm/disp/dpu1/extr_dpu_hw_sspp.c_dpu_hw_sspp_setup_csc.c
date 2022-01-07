
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpu_hw_pipe {int hw; TYPE_1__* cap; } ;
struct dpu_csc_cfg {int dummy; } ;
struct TYPE_2__ {int features; } ;


 scalar_t__ CSC_10BIT_OFFSET ;
 int DPU_SSPP_CSC ;
 int DPU_SSPP_CSC_10BIT ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,int *) ;
 int dpu_hw_csc_setup (int *,int ,struct dpu_csc_cfg*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dpu_hw_sspp_setup_csc(struct dpu_hw_pipe *ctx,
  struct dpu_csc_cfg *data)
{
 u32 idx;
 bool csc10 = 0;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_CSC, &idx) || !data)
  return;

 if (test_bit(DPU_SSPP_CSC_10BIT, &ctx->cap->features)) {
  idx += CSC_10BIT_OFFSET;
  csc10 = 1;
 }

 dpu_hw_csc_setup(&ctx->hw, idx, data, csc10);
}
