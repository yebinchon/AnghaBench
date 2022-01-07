
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mixer_context {scalar_t__ mixer_regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 mixer_reg_read(struct mixer_context *ctx, u32 reg_id)
{
 return readl(ctx->mixer_regs + reg_id);
}
