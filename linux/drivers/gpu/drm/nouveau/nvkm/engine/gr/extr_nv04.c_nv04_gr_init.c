
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv04_gr {TYPE_3__ base; } ;


 int NV03_PGRAPH_INTR ;
 int NV03_PGRAPH_INTR_EN ;
 int NV04_PGRAPH_BETA_AND ;
 int NV04_PGRAPH_CTX_CONTROL ;
 int NV04_PGRAPH_CTX_USER ;
 int NV04_PGRAPH_DEBUG_0 ;
 int NV04_PGRAPH_DEBUG_1 ;
 int NV04_PGRAPH_DEBUG_2 ;
 int NV04_PGRAPH_DEBUG_3 ;
 int NV04_PGRAPH_PATTERN_SHAPE ;
 int NV04_PGRAPH_STATE ;
 int NV04_PGRAPH_VALID1 ;
 int NV04_PGRAPH_VALID2 ;
 struct nv04_gr* nv04_gr (struct nvkm_gr*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static int
nv04_gr_init(struct nvkm_gr *base)
{
 struct nv04_gr *gr = nv04_gr(base);
 struct nvkm_device *device = gr->base.engine.subdev.device;


 nvkm_wr32(device, NV03_PGRAPH_INTR, 0xFFFFFFFF);
 nvkm_wr32(device, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

 nvkm_wr32(device, NV04_PGRAPH_VALID1, 0);
 nvkm_wr32(device, NV04_PGRAPH_VALID2, 0);


 nvkm_wr32(device, NV04_PGRAPH_DEBUG_0, 0x1231c000);


 nvkm_wr32(device, NV04_PGRAPH_DEBUG_1, 0x72111100);


 nvkm_wr32(device, NV04_PGRAPH_DEBUG_2, 0x11d5f071);



 nvkm_wr32(device, NV04_PGRAPH_DEBUG_3, 0xf0d4ff31);


 nvkm_wr32(device, NV04_PGRAPH_STATE , 0xFFFFFFFF);
 nvkm_wr32(device, NV04_PGRAPH_CTX_CONTROL , 0x10000100);
 nvkm_mask(device, NV04_PGRAPH_CTX_USER, 0xff000000, 0x0f000000);


 nvkm_wr32(device, NV04_PGRAPH_PATTERN_SHAPE, 0x00000000);
 nvkm_wr32(device, NV04_PGRAPH_BETA_AND , 0xFFFFFFFF);
 return 0;
}
