
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gp102_pmu ;
 int nvkm_pmu_new_ (int *,struct nvkm_device*,int,struct nvkm_pmu**) ;

int
gp102_pmu_new(struct nvkm_device *device, int index, struct nvkm_pmu **ppmu)
{
 return nvkm_pmu_new_(&gp102_pmu, device, index, ppmu);
}
