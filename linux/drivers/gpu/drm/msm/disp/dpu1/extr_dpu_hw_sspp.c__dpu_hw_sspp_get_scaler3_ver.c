
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_pipe {int hw; } ;


 int DPU_SSPP_SCALER_QSEED3 ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,int *) ;
 int dpu_hw_get_scaler3_ver (int *,int ) ;

__attribute__((used)) static u32 _dpu_hw_sspp_get_scaler3_ver(struct dpu_hw_pipe *ctx)
{
 u32 idx;

 if (!ctx || _sspp_subblk_offset(ctx, DPU_SSPP_SCALER_QSEED3, &idx))
  return 0;

 return dpu_hw_get_scaler3_ver(&ctx->hw, idx);
}
