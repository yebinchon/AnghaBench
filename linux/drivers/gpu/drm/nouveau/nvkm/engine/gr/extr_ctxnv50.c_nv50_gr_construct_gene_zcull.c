
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_gene_zcull(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;


 xf_emit(ctx, 1, 0x3f);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 2);
 xf_emit(ctx, 2, 0x04000000);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 3, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 1);
 xf_emit(ctx, 1, 0x1001);

 xf_emit(ctx, 4, 0xffff);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 0x10, 0x3f800000);
 xf_emit(ctx, 1, 0x10);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 3);
 xf_emit(ctx, 1, 0);
 if (device->chipset != 0x50)
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
}
