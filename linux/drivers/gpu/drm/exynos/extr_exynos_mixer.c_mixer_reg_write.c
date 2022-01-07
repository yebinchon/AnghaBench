
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mixer_context {scalar_t__ mixer_regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mixer_reg_write(struct mixer_context *ctx, u32 reg_id,
     u32 val)
{
 writel(val, ctx->mixer_regs + reg_id);
}
