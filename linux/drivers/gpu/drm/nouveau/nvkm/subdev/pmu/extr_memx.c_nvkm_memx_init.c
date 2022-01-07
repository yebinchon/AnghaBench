
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;
struct nvkm_memx {int base; void* size; struct nvkm_pmu* pmu; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MEMX_INFO_DATA ;
 int MEMX_MSG_INFO ;
 int PROC_MEMX ;
 struct nvkm_memx* kzalloc (int,int ) ;
 int nvkm_pmu_send (struct nvkm_pmu*,void**,int ,int ,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

int
nvkm_memx_init(struct nvkm_pmu *pmu, struct nvkm_memx **pmemx)
{
 struct nvkm_device *device = pmu->subdev.device;
 struct nvkm_memx *memx;
 u32 reply[2];
 int ret;

 ret = nvkm_pmu_send(pmu, reply, PROC_MEMX, MEMX_MSG_INFO,
       MEMX_INFO_DATA, 0);
 if (ret)
  return ret;

 memx = *pmemx = kzalloc(sizeof(*memx), GFP_KERNEL);
 if (!memx)
  return -ENOMEM;
 memx->pmu = pmu;
 memx->base = reply[0];
 memx->size = reply[1];


 do {
  nvkm_wr32(device, 0x10a580, 0x00000003);
 } while (nvkm_rd32(device, 0x10a580) != 0x00000003);
 nvkm_wr32(device, 0x10a1c0, 0x01000000 | memx->base);
 return 0;
}
