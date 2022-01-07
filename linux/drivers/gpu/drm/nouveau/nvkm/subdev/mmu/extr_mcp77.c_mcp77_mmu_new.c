
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int mcp77_mmu ;
 int nvkm_mmu_new_ (int *,struct nvkm_device*,int,struct nvkm_mmu**) ;

int
mcp77_mmu_new(struct nvkm_device *device, int index, struct nvkm_mmu **pmmu)
{
 return nvkm_mmu_new_(&mcp77_mmu, device, index, pmmu);
}
