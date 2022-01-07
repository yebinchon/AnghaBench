
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_ctl {int hw; int pending_flush_mask; } ;


 int CTL_START ;
 int DPU_REG_WRITE (int *,int ,int) ;
 int dpu_hw_ctl_get_flush_register (struct dpu_hw_ctl*) ;
 int trace_dpu_hw_ctl_trigger_start (int ,int ) ;

__attribute__((used)) static inline void dpu_hw_ctl_trigger_start(struct dpu_hw_ctl *ctx)
{
 trace_dpu_hw_ctl_trigger_start(ctx->pending_flush_mask,
           dpu_hw_ctl_get_flush_register(ctx));
 DPU_REG_WRITE(&ctx->hw, CTL_START, 0x1);
}
