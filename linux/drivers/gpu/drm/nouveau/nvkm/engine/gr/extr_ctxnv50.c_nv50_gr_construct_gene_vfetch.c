
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 scalar_t__ IS_NVA3F (int) ;
 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_gene_vfetch(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 int acnt = 0x10, rep, i;

 if (IS_NVA3F(device->chipset))
  acnt = 0x20;

 if (device->chipset >= 0xa0) {
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 1, 1);
 }
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, (acnt/8)-1, 0);
 xf_emit(ctx, acnt/8, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x20);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);

 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 0xb, 0);
 else if (device->chipset >= 0xa0)
  xf_emit(ctx, 0x9, 0);
 else
  xf_emit(ctx, 0x8, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0x1a);

 xf_emit(ctx, 0xc, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 4);
 xf_emit(ctx, 1, 8);
 xf_emit(ctx, 1, 0);
 if (device->chipset == 0x50)
  xf_emit(ctx, 1, 0x3ff);
 else
  xf_emit(ctx, 1, 0x7ff);
 if (device->chipset == 0xa8)
  xf_emit(ctx, 1, 0x1e00);

 xf_emit(ctx, 0xc, 0);

 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, (acnt/8)-1, 0);
 xf_emit(ctx, 1, 0);
 if (device->chipset > 0x50 && device->chipset < 0xa0)
  xf_emit(ctx, 2, 0);
 else
  xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);

 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, 0x10, 0);
  xf_emit(ctx, 2, 0);
  xf_emit(ctx, 2, 0);
 } else {
  xf_emit(ctx, 8, 0);
  xf_emit(ctx, 1, 0);
  xf_emit(ctx, 2, 0);
 }

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, acnt, 0);
 if (device->chipset >= 0xa0)
  xf_emit(ctx, 1, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 2, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 xf_emit(ctx, acnt, 0);
 xf_emit(ctx, 3, 0);

 if (IS_NVA3F(device->chipset)) {
  xf_emit(ctx, acnt, 0);
  xf_emit(ctx, 3, 0);
 }

 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 2, 0);
 else
  xf_emit(ctx, 5, 0);

 xf_emit(ctx, 1, 0);

 if (device->chipset < 0xa0) {
  xf_emit(ctx, 0x41, 0);

  xf_emit(ctx, 0x11, 0);
 } else if (!IS_NVA3F(device->chipset))
  xf_emit(ctx, 0x50, 0);
 else
  xf_emit(ctx, 0x58, 0);

 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, (acnt/8)-1, 0);
 xf_emit(ctx, 1, 1);

 xf_emit(ctx, acnt*4, 0);
 xf_emit(ctx, 4, 0);

 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 0x1d, 0);
 else
  xf_emit(ctx, 0x16, 0);

 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, (acnt/8)-1, 0);

 if (device->chipset < 0xa0)
  xf_emit(ctx, 8, 0);
 else if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 0xc, 0);
 else
  xf_emit(ctx, 7, 0);

 xf_emit(ctx, 0xa, 0);
 if (device->chipset == 0xa0)
  rep = 0xc;
 else
  rep = 4;
 for (i = 0; i < rep; i++) {

  if (IS_NVA3F(device->chipset))
   xf_emit(ctx, 0x20, 0);
  xf_emit(ctx, 0x200, 0);
  xf_emit(ctx, 4, 0);
  xf_emit(ctx, 4, 0);
 }

 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0xf);
 xf_emit(ctx, (acnt/8)-1, 0);
 xf_emit(ctx, acnt/8, 0);
 xf_emit(ctx, 1, 0);
 xf_emit(ctx, 1, 0);

 if (IS_NVA3F(device->chipset))
  xf_emit(ctx, 7, 0);
 else
  xf_emit(ctx, 5, 0);
}
