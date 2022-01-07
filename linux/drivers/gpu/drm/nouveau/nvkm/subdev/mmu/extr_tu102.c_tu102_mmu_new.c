
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mmu_new_ (int *,struct nvkm_device*,int,struct nvkm_mmu**) ;
 int tu102_mmu ;

int
tu102_mmu_new(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
 return nvkm_mmu_new_(&tu102_mmu, device, index, pmmu);
}
