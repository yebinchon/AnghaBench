
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fimc_context {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 fimc_read(struct fimc_context *ctx, u32 reg)
{
 return readl(ctx->regs + reg);
}
