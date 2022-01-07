
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pmu_func {int dummy; } ;
struct nvkm_pmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_pmu* kzalloc (int,int ) ;
 int nvkm_pmu_ctor (struct nvkm_pmu_func const*,struct nvkm_device*,int,struct nvkm_pmu*) ;

int
nvkm_pmu_new_(const struct nvkm_pmu_func *func, struct nvkm_device *device,
       int index, struct nvkm_pmu **ppmu)
{
 struct nvkm_pmu *pmu;
 if (!(pmu = *ppmu = kzalloc(sizeof(*pmu), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_pmu_ctor(func, device, index, *ppmu);
}
