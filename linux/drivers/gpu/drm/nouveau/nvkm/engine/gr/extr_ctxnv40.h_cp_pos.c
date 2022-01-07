
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {int ctxvals_pos; int ctxvals_base; } ;


 int CP_SET_CONTEXT_POINTER ;
 int cp_lsr (struct nvkm_grctx*,int) ;
 int cp_out (struct nvkm_grctx*,int ) ;

__attribute__((used)) static inline void
cp_pos(struct nvkm_grctx *ctx, int offset)
{
 ctx->ctxvals_pos = offset;
 ctx->ctxvals_base = ctx->ctxvals_pos;

 cp_lsr(ctx, ctx->ctxvals_pos);
 cp_out(ctx, CP_SET_CONTEXT_POINTER);
}
