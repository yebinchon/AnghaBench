
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_pmu {int falcon; int queue; } ;


 int nvkm_falcon_del (int *) ;
 int nvkm_msgqueue_del (int *) ;
 void* nvkm_pmu (struct nvkm_subdev*) ;

__attribute__((used)) static void *
nvkm_pmu_dtor(struct nvkm_subdev *subdev)
{
 struct nvkm_pmu *pmu = nvkm_pmu(subdev);
 nvkm_msgqueue_del(&pmu->queue);
 nvkm_falcon_del(&pmu->falcon);
 return nvkm_pmu(subdev);
}
