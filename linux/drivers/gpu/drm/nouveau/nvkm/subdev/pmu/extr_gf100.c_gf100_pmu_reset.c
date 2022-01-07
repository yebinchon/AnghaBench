
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_SUBDEV_PMU ;
 int nvkm_mc_disable (struct nvkm_device*,int ) ;
 int nvkm_mc_enable (struct nvkm_device*,int ) ;

void
gf100_pmu_reset(struct nvkm_pmu *pmu)
{
 struct nvkm_device *device = pmu->subdev.device;
 nvkm_mc_disable(device, NVKM_SUBDEV_PMU);
 nvkm_mc_enable(device, NVKM_SUBDEV_PMU);
}
