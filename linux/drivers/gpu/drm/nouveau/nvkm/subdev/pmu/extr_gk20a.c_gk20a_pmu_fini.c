
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_pmu {TYPE_2__ subdev; int falcon; } ;
struct gk20a_pmu {int alarm; } ;
struct TYPE_3__ {int timer; } ;


 struct gk20a_pmu* gk20a_pmu (struct nvkm_pmu*) ;
 int nvkm_falcon_put (int ,TYPE_2__*) ;
 int nvkm_timer_alarm (int ,int ,int *) ;

__attribute__((used)) static void
gk20a_pmu_fini(struct nvkm_pmu *pmu)
{
 struct gk20a_pmu *gpmu = gk20a_pmu(pmu);
 nvkm_timer_alarm(pmu->subdev.device->timer, 0, &gpmu->alarm);

 nvkm_falcon_put(pmu->falcon, &pmu->subdev);
}
