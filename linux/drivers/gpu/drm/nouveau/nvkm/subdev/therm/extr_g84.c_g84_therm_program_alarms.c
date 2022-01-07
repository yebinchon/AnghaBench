
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alarm_program_lock; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_10__ {int hysteresis; int temp; } ;
struct TYPE_9__ {int temp; int hysteresis; } ;
struct TYPE_8__ {int temp; int hysteresis; } ;
struct TYPE_7__ {int temp; int hysteresis; } ;
struct nvbios_therm_sensor {TYPE_5__ thrs_shutdown; TYPE_4__ thrs_critical; TYPE_3__ thrs_down_clock; TYPE_2__ thrs_fan_boost; } ;
struct nvkm_therm {TYPE_1__ sensor; struct nvkm_subdev subdev; struct nvbios_therm_sensor bios_sensor; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_debug (struct nvkm_subdev*,char*,int,int ,int,int ,int,int ,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
g84_therm_program_alarms(struct nvkm_therm *therm)
{
 struct nvbios_therm_sensor *sensor = &therm->bios_sensor;
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 unsigned long flags;

 spin_lock_irqsave(&therm->sensor.alarm_program_lock, flags);


 nvkm_wr32(device, 0x20000, 0x000003ff);


 nvkm_wr32(device, 0x20484, sensor->thrs_shutdown.hysteresis);
 nvkm_wr32(device, 0x20480, sensor->thrs_shutdown.temp);


 nvkm_wr32(device, 0x204c4, sensor->thrs_fan_boost.temp);


 nvkm_wr32(device, 0x204c0, sensor->thrs_critical.temp);


 nvkm_wr32(device, 0x20414, sensor->thrs_down_clock.temp);
 spin_unlock_irqrestore(&therm->sensor.alarm_program_lock, flags);

 nvkm_debug(subdev,
     "Programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\n",
     sensor->thrs_fan_boost.temp,
     sensor->thrs_fan_boost.hysteresis,
     sensor->thrs_down_clock.temp,
     sensor->thrs_down_clock.hysteresis,
     sensor->thrs_critical.temp,
     sensor->thrs_critical.hysteresis,
     sensor->thrs_shutdown.temp,
     sensor->thrs_shutdown.hysteresis);

}
