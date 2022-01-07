
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int alarm_program_lock; } ;
struct nvbios_therm_sensor {int thrs_critical; int thrs_fan_boost; int thrs_shutdown; int thrs_down_clock; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ sensor; struct nvbios_therm_sensor bios_sensor; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_THERM_THRS_CRITICAL ;
 int NVKM_THERM_THRS_DOWNCLOCK ;
 int NVKM_THERM_THRS_FANBOOST ;
 int NVKM_THERM_THRS_SHUTDOWN ;
 int g84_therm_threshold_hyst_emulation (struct nvkm_therm*,int,int,int *,int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
g84_therm_intr(struct nvkm_therm *therm)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvbios_therm_sensor *sensor = &therm->bios_sensor;
 unsigned long flags;
 uint32_t intr;

 spin_lock_irqsave(&therm->sensor.alarm_program_lock, flags);

 intr = nvkm_rd32(device, 0x20100) & 0x3ff;


 if (intr & 0x002) {
  g84_therm_threshold_hyst_emulation(therm, 0x20414, 24,
         &sensor->thrs_down_clock,
         NVKM_THERM_THRS_DOWNCLOCK);
  intr &= ~0x002;
 }


 if (intr & 0x004) {
  g84_therm_threshold_hyst_emulation(therm, 0x20480, 20,
         &sensor->thrs_shutdown,
         NVKM_THERM_THRS_SHUTDOWN);
  intr &= ~0x004;
 }


 if (intr & 0x008) {
  g84_therm_threshold_hyst_emulation(therm, 0x204c4, 21,
         &sensor->thrs_fan_boost,
         NVKM_THERM_THRS_FANBOOST);
  intr &= ~0x008;
 }


 if (intr & 0x010) {
  g84_therm_threshold_hyst_emulation(therm, 0x204c0, 22,
         &sensor->thrs_critical,
         NVKM_THERM_THRS_CRITICAL);
  intr &= ~0x010;
 }

 if (intr)
  nvkm_error(subdev, "intr %08x\n", intr);


 nvkm_wr32(device, 0x20100, 0xffffffff);
 nvkm_wr32(device, 0x1100, 0x10000);

 spin_unlock_irqrestore(&therm->sensor.alarm_program_lock, flags);
}
