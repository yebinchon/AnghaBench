
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int crystal; } ;


 int pwm_info (struct nvkm_therm*,int) ;

int
gf119_fan_pwm_clock(struct nvkm_therm *therm, int line)
{
 struct nvkm_device *device = therm->subdev.device;
 int indx = pwm_info(therm, line);
 if (indx < 0)
  return 0;
 else if (indx < 2)
  return (device->crystal * 1000) / 20;
 else
  return device->crystal * 1000 / 10;
}
