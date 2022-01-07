
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_pmu {struct nvkm_falcon* falcon; struct nvkm_subdev subdev; } ;
struct nvkm_falcon {int name; } ;
struct nvkm_device {int timer; } ;
struct gk20a_pmu {int alarm; } ;


 int BUSY_SLOT ;
 int CLK_SLOT ;
 struct gk20a_pmu* gk20a_pmu (struct nvkm_pmu*) ;
 int nvkm_error (struct nvkm_subdev*,char*,int ) ;
 int nvkm_falcon_get (struct nvkm_falcon*,struct nvkm_subdev*) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;
 int nvkm_timer_alarm (int ,int,int *) ;

__attribute__((used)) static int
gk20a_pmu_init(struct nvkm_pmu *pmu)
{
 struct gk20a_pmu *gpmu = gk20a_pmu(pmu);
 struct nvkm_subdev *subdev = &pmu->subdev;
 struct nvkm_device *device = pmu->subdev.device;
 struct nvkm_falcon *falcon = pmu->falcon;
 int ret;

 ret = nvkm_falcon_get(falcon, subdev);
 if (ret) {
  nvkm_error(subdev, "cannot acquire %s falcon!\n", falcon->name);
  return ret;
 }


 nvkm_falcon_wr32(falcon, 0x504 + (BUSY_SLOT * 0x10), 0x00200001);
 nvkm_falcon_wr32(falcon, 0x50c + (BUSY_SLOT * 0x10), 0x00000002);
 nvkm_falcon_wr32(falcon, 0x50c + (CLK_SLOT * 0x10), 0x00000003);

 nvkm_timer_alarm(device->timer, 2000000000, &gpmu->alarm);
 return 0;
}
