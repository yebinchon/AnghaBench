
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;


 int NVKM_SUBDEV_PMU ;
 int nvkm_mc_enabled (int ,int ) ;

bool
gf100_pmu_enabled(struct nvkm_pmu *pmu)
{
 return nvkm_mc_enabled(pmu->subdev.device, NVKM_SUBDEV_PMU);
}
