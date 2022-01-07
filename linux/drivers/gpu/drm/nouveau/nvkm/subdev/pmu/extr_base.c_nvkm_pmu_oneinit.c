
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {int falcon; int subdev; } ;


 int nvkm_falcon_v1_new (int *,char*,int,int *) ;
 struct nvkm_pmu* nvkm_pmu (struct nvkm_subdev*) ;

__attribute__((used)) static int
nvkm_pmu_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_pmu *pmu = nvkm_pmu(subdev);
 return nvkm_falcon_v1_new(&pmu->subdev, "PMU", 0x10a000, &pmu->falcon);
}
