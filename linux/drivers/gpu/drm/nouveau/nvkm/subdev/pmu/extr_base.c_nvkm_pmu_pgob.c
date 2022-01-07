
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_pmu {TYPE_1__* func; } ;
struct TYPE_2__ {int (* pgob ) (struct nvkm_pmu*,int) ;} ;


 int stub1 (struct nvkm_pmu*,int) ;

void
nvkm_pmu_pgob(struct nvkm_pmu *pmu, bool enable)
{
 if (pmu && pmu->func->pgob)
  pmu->func->pgob(pmu, enable);
}
