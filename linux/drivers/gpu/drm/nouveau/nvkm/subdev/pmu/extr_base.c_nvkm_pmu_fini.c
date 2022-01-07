
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {int work; } ;
struct nvkm_pmu {TYPE_2__ recv; TYPE_1__* func; } ;
struct TYPE_3__ {int (* fini ) (struct nvkm_pmu*) ;} ;


 int flush_work (int *) ;
 struct nvkm_pmu* nvkm_pmu (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_pmu*) ;

__attribute__((used)) static int
nvkm_pmu_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_pmu *pmu = nvkm_pmu(subdev);

 if (pmu->func->fini)
  pmu->func->fini(pmu);

 flush_work(&pmu->recv.work);
 return 0;
}
