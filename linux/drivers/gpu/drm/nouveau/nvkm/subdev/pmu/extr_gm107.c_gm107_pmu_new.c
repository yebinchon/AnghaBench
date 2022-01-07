
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gm107_pmu ;
 int nvkm_pmu_new_ (int *,struct nvkm_device*,int,struct nvkm_pmu**) ;

int
gm107_pmu_new(struct nvkm_device *device, int index, struct nvkm_pmu **ppmu)
{
 return nvkm_pmu_new_(&gm107_pmu, device, index, ppmu);
}
