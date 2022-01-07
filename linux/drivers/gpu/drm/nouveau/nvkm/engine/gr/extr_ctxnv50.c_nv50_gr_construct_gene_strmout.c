
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_gene_strmout(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 xf_emit(ctx, 1, 0x102);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 4);
 if (device->chipset >= 0xa0) {
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 4, 0);
 }
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50)
  xf_emit(ctx, 1, 0x3ff);
 else
  xf_emit(ctx, 1, 0x7ff);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, 1, 0x102);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 4, 4);
 if (device->chipset >= 0xa0) {
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 4, 0);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, 0x20, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
}
