
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pmu {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pmu {int alarm; int * data; struct nvkm_pmu base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gk20a_dvfs_data ;
 int gk20a_pmu ;
 int gk20a_pmu_dvfs_work ;
 struct gk20a_pmu* kzalloc (int,int ) ;
 int nvkm_alarm_init (int *,int ) ;
 int nvkm_pmu_ctor (int *,struct nvkm_device*,int,struct nvkm_pmu*) ;

int
gk20a_pmu_new(struct nvkm_device *device, int index, struct nvkm_pmu **ppmu)
{
 struct gk20a_pmu *pmu;

 if (!(pmu = kzalloc(sizeof(*pmu), GFP_KERNEL)))
  return -ENOMEM;
 *ppmu = &pmu->base;

 nvkm_pmu_ctor(&gk20a_pmu, device, index, &pmu->base);

 pmu->data = &gk20a_dvfs_data;
 nvkm_alarm_init(&pmu->alarm, gk20a_pmu_dvfs_work);

 return 0;
}
