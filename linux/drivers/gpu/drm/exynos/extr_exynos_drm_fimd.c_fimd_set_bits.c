
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimd_context {int regs; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static inline void fimd_set_bits(struct fimd_context *ctx, u32 reg, u32 mask,
     u32 val)
{
 val = (val & mask) | (readl(ctx->regs + reg) & ~mask);
 writel(val, ctx->regs + reg);
}
