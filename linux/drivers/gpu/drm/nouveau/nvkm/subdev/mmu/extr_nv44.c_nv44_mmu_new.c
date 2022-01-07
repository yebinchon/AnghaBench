
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mmu {int dummy; } ;
struct nvkm_device {scalar_t__ type; int cfgopt; } ;


 scalar_t__ NVKM_DEVICE_AGP ;
 int nv04_mmu_new (struct nvkm_device*,int,struct nvkm_mmu**) ;
 int nv44_mmu ;
 int nvkm_boolopt (int ,char*,int) ;
 int nvkm_mmu_new_ (int *,struct nvkm_device*,int,struct nvkm_mmu**) ;

int
nv44_mmu_new(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
 if (device->type == NVKM_DEVICE_AGP ||
     !nvkm_boolopt(device->cfgopt, "NvPCIE", 1))
  return nv04_mmu_new(device, index, pmmu);

 return nvkm_mmu_new_(&nv44_mmu, device, index, pmmu);
}
