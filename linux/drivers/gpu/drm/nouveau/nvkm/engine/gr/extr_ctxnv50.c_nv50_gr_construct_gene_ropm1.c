
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int ) ;
 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_gene_ropm1(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 xf_emit(ctx, 1, 0x4e3bfdf);
 xf_emit(ctx, 1, 0x4e3bfdf);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 1, 0x11);
 xf_emit(ctx, 1, 0);
}
