
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_pmu*) ;} ;


 struct nvkm_pmu* nvkm_pmu (struct nvkm_subdev*) ;
 int nvkm_pmu_reset (struct nvkm_pmu*) ;
 int stub1 (struct nvkm_pmu*) ;

__attribute__((used)) static int
nvkm_pmu_init(struct nvkm_subdev *subdev)
{
 struct nvkm_pmu *pmu = nvkm_pmu(subdev);
 int ret = nvkm_pmu_reset(pmu);
 if (ret == 0 && pmu->func->init)
  ret = pmu->func->init(pmu);
 return ret;
}
