
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_ctl {int pending_flush_mask; } ;


 int dpu_hw_ctl_get_flush_register (struct dpu_hw_ctl*) ;
 int trace_dpu_hw_ctl_clear_pending_flush (int,int ) ;

__attribute__((used)) static inline void dpu_hw_ctl_clear_pending_flush(struct dpu_hw_ctl *ctx)
{
 trace_dpu_hw_ctl_clear_pending_flush(ctx->pending_flush_mask,
         dpu_hw_ctl_get_flush_register(ctx));
 ctx->pending_flush_mask = 0x0;
}
