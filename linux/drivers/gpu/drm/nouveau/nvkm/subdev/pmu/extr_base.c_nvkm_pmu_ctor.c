
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_pmu_func {int dummy; } ;
struct TYPE_2__ {int wait; int work; } ;
struct nvkm_pmu {TYPE_1__ recv; struct nvkm_pmu_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int nvkm_pmu ;
 int nvkm_pmu_recv ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
nvkm_pmu_ctor(const struct nvkm_pmu_func *func, struct nvkm_device *device,
       int index, struct nvkm_pmu *pmu)
{
 nvkm_subdev_ctor(&nvkm_pmu, device, index, &pmu->subdev);
 pmu->func = func;
 INIT_WORK(&pmu->recv.work, nvkm_pmu_recv);
 init_waitqueue_head(&pmu->recv.wait);
 return 0;
}
