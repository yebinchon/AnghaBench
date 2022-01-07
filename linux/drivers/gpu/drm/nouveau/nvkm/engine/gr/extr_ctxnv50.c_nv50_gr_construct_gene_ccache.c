
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_gene_ccache(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 0x800, 0);
 switch (device->chipset) {
 case 0x50:
 case 0x92:
 case 0xa0:
  xf_emit(ctx, 0x2b, 0);
  break;
 case 0x84:
  xf_emit(ctx, 0x29, 0);
  break;
 case 0x94:
 case 0x96:
 case 0xa3:
  xf_emit(ctx, 0x27, 0);
  break;
 case 0x86:
 case 0x98:
 case 0xa5:
 case 0xa8:
 case 0xaa:
 case 0xac:
 case 0xaf:
  xf_emit(ctx, 0x25, 0);
  break;
 }


 xf_emit(ctx, 0x100, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x30, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 0x100, 0);
 xf_emit(ctx, 8, 0);
 xf_emit(ctx, 8, 0);
 xf_emit(ctx, 4, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x3fffff);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1fff);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
}
