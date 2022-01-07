
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_grctx {scalar_t__ mode; int ctxvals_pos; int data; } ;


 scalar_t__ NVKM_GRCTX_VALS ;
 int nvkm_wo32 (int ,int,int ) ;

__attribute__((used)) static void
xf_emit(struct nvkm_grctx *ctx, int num, u32 val) {
 int i;
 if (val && ctx->mode == NVKM_GRCTX_VALS) {
  for (i = 0; i < num; i++)
   nvkm_wo32(ctx->data, 4 * (ctx->ctxvals_pos + (i << 3)), val);
 }
 ctx->ctxvals_pos += num << 3;
}
