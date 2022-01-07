
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {int dummy; } ;


 struct nvkm_pmu* nvkm_pmu (struct nvkm_subdev*) ;
 int nvkm_pmu_reset (struct nvkm_pmu*) ;

__attribute__((used)) static int
nvkm_pmu_preinit(struct nvkm_subdev *subdev)
{
 struct nvkm_pmu *pmu = nvkm_pmu(subdev);
 return nvkm_pmu_reset(pmu);
}
