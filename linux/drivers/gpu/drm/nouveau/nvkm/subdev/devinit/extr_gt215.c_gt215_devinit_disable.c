
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_devinit {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 unsigned long long NVKM_ENGINE_CE0 ;
 unsigned long long NVKM_ENGINE_DISP ;
 unsigned long long NVKM_ENGINE_MSPDEC ;
 unsigned long long NVKM_ENGINE_MSPPP ;
 unsigned long long NVKM_ENGINE_MSVLD ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u64
gt215_devinit_disable(struct nvkm_devinit *init)
{
 struct nvkm_device *device = init->subdev.device;
 u32 r001540 = nvkm_rd32(device, 0x001540);
 u32 r00154c = nvkm_rd32(device, 0x00154c);
 u64 disable = 0ULL;

 if (!(r001540 & 0x40000000)) {
  disable |= (1ULL << NVKM_ENGINE_MSPDEC);
  disable |= (1ULL << NVKM_ENGINE_MSPPP);
 }

 if (!(r00154c & 0x00000004))
  disable |= (1ULL << NVKM_ENGINE_DISP);
 if (!(r00154c & 0x00000020))
  disable |= (1ULL << NVKM_ENGINE_MSVLD);
 if (!(r00154c & 0x00000200))
  disable |= (1ULL << NVKM_ENGINE_CE0);

 return disable;
}
