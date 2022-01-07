
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mmu {int dummy; } ;
struct nvkm_device {int cfgopt; } ;


 int gm200_mmu_new (struct nvkm_device*,int,struct nvkm_mmu**) ;
 int gp100_mmu ;
 int nvkm_boolopt (int ,char*,int) ;
 int nvkm_mmu_new_ (int *,struct nvkm_device*,int,struct nvkm_mmu**) ;

int
gp100_mmu_new(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
 if (!nvkm_boolopt(device->cfgopt, "GP100MmuLayout", 1))
  return gm200_mmu_new(device, index, pmmu);
 return nvkm_mmu_new_(&gp100_mmu, device, index, pmmu);
}
