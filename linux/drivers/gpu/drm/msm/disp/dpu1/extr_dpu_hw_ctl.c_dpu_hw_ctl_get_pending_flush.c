
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_ctl {int pending_flush_mask; } ;



__attribute__((used)) static u32 dpu_hw_ctl_get_pending_flush(struct dpu_hw_ctl *ctx)
{
 return ctx->pending_flush_mask;
}
