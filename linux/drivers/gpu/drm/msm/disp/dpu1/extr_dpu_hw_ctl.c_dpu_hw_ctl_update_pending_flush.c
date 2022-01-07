
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_ctl {int pending_flush_mask; } ;


 int trace_dpu_hw_ctl_update_pending_flush (int ,int ) ;

__attribute__((used)) static inline void dpu_hw_ctl_update_pending_flush(struct dpu_hw_ctl *ctx,
  u32 flushbits)
{
 trace_dpu_hw_ctl_update_pending_flush(flushbits,
           ctx->pending_flush_mask);
 ctx->pending_flush_mask |= flushbits;
}
