
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {scalar_t__ card_type; int chipset; } ;
struct nv10_gr_chan {void** nv17; void** nv10; struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;


 int ARRAY_SIZE (int *) ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_USER ;
 scalar_t__ NV_11 ;
 int * nv10_gr_ctx_regs ;
 int nv10_gr_save_pipe (struct nv10_gr_chan*) ;
 int * nv17_gr_ctx_regs ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 void* nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static int
nv10_gr_unload_context(struct nv10_gr_chan *chan)
{
 struct nv10_gr *gr = chan->gr;
 struct nvkm_device *device = gr->base.engine.subdev.device;
 int i;

 for (i = 0; i < ARRAY_SIZE(nv10_gr_ctx_regs); i++)
  chan->nv10[i] = nvkm_rd32(device, nv10_gr_ctx_regs[i]);

 if (device->card_type >= NV_11 && device->chipset >= 0x17) {
  for (i = 0; i < ARRAY_SIZE(nv17_gr_ctx_regs); i++)
   chan->nv17[i] = nvkm_rd32(device, nv17_gr_ctx_regs[i]);
 }

 nv10_gr_save_pipe(chan);

 nvkm_wr32(device, NV10_PGRAPH_CTX_CONTROL, 0x10000000);
 nvkm_mask(device, NV10_PGRAPH_CTX_USER, 0xff000000, 0x1f000000);
 return 0;
}
