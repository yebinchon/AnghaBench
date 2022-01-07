
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_timer {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int NV04_PTIMER_INTR_0 ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_timer_alarm_trigger (struct nvkm_timer*) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

void
nv04_timer_intr(struct nvkm_timer *tmr)
{
 struct nvkm_subdev *subdev = &tmr->subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, NV04_PTIMER_INTR_0);

 if (stat & 0x00000001) {
  nvkm_wr32(device, NV04_PTIMER_INTR_0, 0x00000001);
  nvkm_timer_alarm_trigger(tmr);
  stat &= ~0x00000001;
 }

 if (stat) {
  nvkm_error(subdev, "intr %08x\n", stat);
  nvkm_wr32(device, NV04_PTIMER_INTR_0, stat);
 }
}
