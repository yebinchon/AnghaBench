
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_xfer_unk84xx(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 int magic3;
 switch (device->chipset) {
 case 0x50:
  magic3 = 0x1000;
  break;
 case 0x86:
 case 0x98:
 case 0xa8:
 case 0xaa:
 case 0xac:
 case 0xaf:
  magic3 = 0x1e00;
  break;
 default:
  magic3 = 0;
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 0x1f, 0);
 else if (device->chipset >= 0xa0)
  xf_emit(ctx, 0x0f, 0);
 else
  xf_emit(ctx, 0x10, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 if (device->chipset >= 0xa0)
  xf_emit(ctx, 1, 0x03020100);
 else
  xf_emit(ctx, 1, 0x00608080);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 2, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x80);
 if (magic3)
  xf_emit(ctx, 1, magic3);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 0x1f, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x80);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0x03020100);
 xf_emit(ctx, 1, 3);
 if (magic3)
  xf_emit(ctx, 1, magic3);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 3);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x94 || device->chipset == 0x96)
  xf_emit(ctx, 0x1020, 0);
 else if (device->chipset < 0xa0)
  xf_emit(ctx, 0xa20, 0);
 else if (!IS_NVA3F(device->chipset))
  xf_emit(ctx, 0x210, 0);
 else
  xf_emit(ctx, 0x410, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 3);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
}
