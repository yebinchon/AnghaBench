
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pmu {int queue; int subdev; } ;


 int nvkm_msgqueue_recv (int ) ;
 int nvkm_warn (int *,char*) ;

__attribute__((used)) static void
gm20b_pmu_recv(struct nvkm_pmu *pmu)
{
 if (!pmu->queue) {
  nvkm_warn(&pmu->subdev,
     "recv function called while no firmware set!\n");
  return;
 }

 nvkm_msgqueue_recv(pmu->queue);
}
