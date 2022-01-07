
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvkm_grctx {size_t* ucode; int ctxprog_max; size_t ctxprog_len; int ctxvals_pos; int mode; struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_GRCTX_PROG ;
 int kfree (size_t*) ;
 size_t* kmalloc (int,int ) ;
 int nv50_grctx_generate (struct nvkm_grctx*) ;
 int nvkm_wr32 (struct nvkm_device*,int,size_t) ;

int
nv50_grctx_init(struct nvkm_device *device, u32 *size)
{
 u32 *ctxprog = kmalloc(512 * 4, GFP_KERNEL), i;
 struct nvkm_grctx ctx = {
  .device = device,
  .mode = NVKM_GRCTX_PROG,
  .ucode = ctxprog,
  .ctxprog_max = 512,
 };

 if (!ctxprog)
  return -ENOMEM;
 nv50_grctx_generate(&ctx);

 nvkm_wr32(device, 0x400324, 0);
 for (i = 0; i < ctx.ctxprog_len; i++)
  nvkm_wr32(device, 0x400328, ctxprog[i]);
 *size = ctx.ctxvals_pos * 4;
 kfree(ctxprog);
 return 0;
}
