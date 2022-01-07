
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct decon_context {int addr; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static inline void decon_set_bits(struct decon_context *ctx, u32 reg, u32 mask,
      u32 val)
{
 val = (val & mask) | (readl(ctx->addr + reg) & ~mask);
 writel(val, ctx->addr + reg);
}
