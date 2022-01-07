
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixer_context {int vp_regs; } ;


 int vp_reg_read (struct mixer_context*,int) ;
 int writel (int,int) ;

__attribute__((used)) static inline void vp_reg_writemask(struct mixer_context *ctx, u32 reg_id,
     u32 val, u32 mask)
{
 u32 old = vp_reg_read(ctx, reg_id);

 val = (val & mask) | (old & ~mask);
 writel(val, ctx->vp_regs + reg_id);
}
