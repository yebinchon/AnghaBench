
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct nv04_gr_chan {int * nv04; TYPE_4__* gr; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct TYPE_8__ {TYPE_3__ base; } ;


 int ARRAY_SIZE (int *) ;
 int NV04_PGRAPH_CTX_CONTROL ;
 int NV04_PGRAPH_CTX_USER ;
 int * nv04_gr_ctx_regs ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static int
nv04_gr_unload_context(struct nv04_gr_chan *chan)
{
 struct nvkm_device *device = chan->gr->base.engine.subdev.device;
 int i;

 for (i = 0; i < ARRAY_SIZE(nv04_gr_ctx_regs); i++)
  chan->nv04[i] = nvkm_rd32(device, nv04_gr_ctx_regs[i]);

 nvkm_wr32(device, NV04_PGRAPH_CTX_CONTROL, 0x10000000);
 nvkm_mask(device, NV04_PGRAPH_CTX_USER, 0xff000000, 0x0f000000);
 return 0;
}
