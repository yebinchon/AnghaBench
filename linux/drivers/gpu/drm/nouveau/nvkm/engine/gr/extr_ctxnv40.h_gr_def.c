
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_grctx {scalar_t__ mode; int ctxprog_reg; int ctxvals_base; int data; } ;


 scalar_t__ NVKM_GRCTX_VALS ;
 int nvkm_wo32 (int ,int,int) ;

__attribute__((used)) static inline void
gr_def(struct nvkm_grctx *ctx, u32 reg, u32 val)
{
 if (ctx->mode != NVKM_GRCTX_VALS)
  return;

 reg = (reg - 0x00400000) / 4;
 reg = (reg - ctx->ctxprog_reg) + ctx->ctxvals_base;

 nvkm_wo32(ctx->data, reg * 4, val);
}
