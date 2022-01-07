
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int reserved; int ramro; int ramfc; int ramht; int vbios; TYPE_1__ subdev; } ;
struct nv04_instmem {TYPE_2__ base; int heap; } ;


 int NVKM_MEM_TARGET_INST ;
 struct nv04_instmem* nv04_instmem (struct nvkm_instmem*) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int ,int,int *) ;
 int nvkm_mm_init (int *,int ,int ,int,int) ;
 int nvkm_ramht_new (struct nvkm_device*,int,int ,int *,int *) ;

__attribute__((used)) static int
nv04_instmem_oneinit(struct nvkm_instmem *base)
{
 struct nv04_instmem *imem = nv04_instmem(base);
 struct nvkm_device *device = imem->base.subdev.device;
 int ret;


 imem->base.reserved = 512 * 1024;

 ret = nvkm_mm_init(&imem->heap, 0, 0, imem->base.reserved, 1);
 if (ret)
  return ret;


 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 0x10000, 0, 0,
         &imem->base.vbios);
 if (ret)
  return ret;


 ret = nvkm_ramht_new(device, 0x08000, 0, ((void*)0), &imem->base.ramht);
 if (ret)
  return ret;


 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 0x00800, 0, 1,
         &imem->base.ramfc);
 if (ret)
  return ret;


 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 0x00200, 0, 0,
         &imem->base.ramro);
 if (ret)
  return ret;

 return 0;
}
