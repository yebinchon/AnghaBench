
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {scalar_t__ card_type; int chipset; } ;
struct nv10_gr_chan {int* nv10; int* nv17; struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;


 int ARRAY_SIZE (int *) ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_USER ;
 int NV10_PGRAPH_FFINTFC_ST2 ;
 int NV10_PGRAPH_GLOBALSTATE1 ;
 scalar_t__ NV_11 ;
 int * nv10_gr_ctx_regs ;
 int nv10_gr_load_dma_vtxbuf (struct nv10_gr_chan*,int,int) ;
 int nv10_gr_load_pipe (struct nv10_gr_chan*) ;
 int * nv17_gr_ctx_regs ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static int
nv10_gr_load_context(struct nv10_gr_chan *chan, int chid)
{
 struct nv10_gr *gr = chan->gr;
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 inst;
 int i;

 for (i = 0; i < ARRAY_SIZE(nv10_gr_ctx_regs); i++)
  nvkm_wr32(device, nv10_gr_ctx_regs[i], chan->nv10[i]);

 if (device->card_type >= NV_11 && device->chipset >= 0x17) {
  for (i = 0; i < ARRAY_SIZE(nv17_gr_ctx_regs); i++)
   nvkm_wr32(device, nv17_gr_ctx_regs[i], chan->nv17[i]);
 }

 nv10_gr_load_pipe(chan);

 inst = nvkm_rd32(device, NV10_PGRAPH_GLOBALSTATE1) & 0xffff;
 nv10_gr_load_dma_vtxbuf(chan, chid, inst);

 nvkm_wr32(device, NV10_PGRAPH_CTX_CONTROL, 0x10010100);
 nvkm_mask(device, NV10_PGRAPH_CTX_USER, 0xff000000, chid << 24);
 nvkm_mask(device, NV10_PGRAPH_FFINTFC_ST2, 0x30000000, 0x00000000);
 return 0;
}
