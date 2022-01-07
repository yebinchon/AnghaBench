
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;


 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static bool
gp102_pmu_enabled(struct nvkm_pmu *pmu)
{
 return !(nvkm_rd32(pmu->subdev.device, 0x10a3c0) & 0x00000001);
}
