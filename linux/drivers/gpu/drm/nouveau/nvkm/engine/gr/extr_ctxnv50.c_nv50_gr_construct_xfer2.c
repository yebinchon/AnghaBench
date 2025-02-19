
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_grctx {int ctxvals_pos; struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;


 int BUSY ;
 int CP_SEEK_2 ;
 int CP_SET_XFER_POINTER ;
 int CP_XFER_2 ;
 int XFER ;
 int cp_lsr (struct nvkm_grctx*,int) ;
 int cp_out (struct nvkm_grctx*,int ) ;
 int cp_wait (struct nvkm_grctx*,int ,int ) ;
 int nv50_gr_construct_xfer_mpc (struct nvkm_grctx*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int xf_emit (struct nvkm_grctx*,int,int) ;

__attribute__((used)) static void
nv50_gr_construct_xfer2(struct nvkm_grctx *ctx)
{
 struct nvkm_device *device = ctx->device;
 int i;
 u32 offset;
 u32 units = nvkm_rd32(device, 0x1540);
 int size = 0;

 offset = (ctx->ctxvals_pos+0x3f)&~0x3f;

 if (device->chipset < 0xa0) {
  for (i = 0; i < 8; i++) {
   ctx->ctxvals_pos = offset + i;


   if (i == 0)
    xf_emit(ctx, 1, 0x08100c12);
   if (units & (1 << i))
    nv50_gr_construct_xfer_mpc(ctx);
   if ((ctx->ctxvals_pos-offset)/8 > size)
    size = (ctx->ctxvals_pos-offset)/8;
  }
 } else {

  ctx->ctxvals_pos = offset;


  xf_emit(ctx, 1, 0x08100c12);
  if (units & (1 << 0))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 1))
   nv50_gr_construct_xfer_mpc(ctx);
  if ((ctx->ctxvals_pos-offset)/8 > size)
   size = (ctx->ctxvals_pos-offset)/8;


  ctx->ctxvals_pos = offset + 1;
  if (units & (1 << 2))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 3))
   nv50_gr_construct_xfer_mpc(ctx);
  if ((ctx->ctxvals_pos-offset)/8 > size)
   size = (ctx->ctxvals_pos-offset)/8;


  ctx->ctxvals_pos = offset + 2;
  if (units & (1 << 4))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 5))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 6))
   nv50_gr_construct_xfer_mpc(ctx);
  if ((ctx->ctxvals_pos-offset)/8 > size)
   size = (ctx->ctxvals_pos-offset)/8;


  ctx->ctxvals_pos = offset + 3;
  if (units & (1 << 7))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 8))
   nv50_gr_construct_xfer_mpc(ctx);
  if (units & (1 << 9))
   nv50_gr_construct_xfer_mpc(ctx);
  if ((ctx->ctxvals_pos-offset)/8 > size)
   size = (ctx->ctxvals_pos-offset)/8;
 }
 ctx->ctxvals_pos = offset + size * 8;
 ctx->ctxvals_pos = (ctx->ctxvals_pos+0x3f)&~0x3f;
 cp_lsr (ctx, offset);
 cp_out (ctx, CP_SET_XFER_POINTER);
 cp_lsr (ctx, size);
 cp_out (ctx, CP_SEEK_2);
 cp_out (ctx, CP_XFER_2);
 cp_wait(ctx, XFER, BUSY);
}
