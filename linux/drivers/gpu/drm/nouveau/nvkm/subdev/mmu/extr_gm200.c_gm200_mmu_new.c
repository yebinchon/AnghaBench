
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_mmu {int dummy; } ;
struct nvkm_device {TYPE_1__* fb; } ;
struct TYPE_2__ {scalar_t__ page; } ;


 int gm200_mmu ;
 int gm200_mmu_fixed ;
 int nvkm_mmu_new_ (int *,struct nvkm_device*,int,struct nvkm_mmu**) ;

int
gm200_mmu_new(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
 if (device->fb->page)
  return nvkm_mmu_new_(&gm200_mmu_fixed, device, index, pmmu);
 return nvkm_mmu_new_(&gm200_mmu, device, index, pmmu);
}
