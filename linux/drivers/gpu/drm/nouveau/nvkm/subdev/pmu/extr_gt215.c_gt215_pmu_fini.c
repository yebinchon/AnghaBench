
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;


 int nvkm_wr32 (int ,int,int) ;

void
gt215_pmu_fini(struct nvkm_pmu *pmu)
{
 nvkm_wr32(pmu->subdev.device, 0x10a014, 0x00000060);
}
