
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_pmu {TYPE_2__* func; } ;
struct nvkm_device {int chipset; struct nvkm_pmu* pmu; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ code; } ;



bool
nvkm_pmu_fan_controlled(struct nvkm_device *device)
{
 struct nvkm_pmu *pmu = device->pmu;




 if (pmu && pmu->func->code.size)
  return 0;





 return (device->chipset >= 0xc0);
}
