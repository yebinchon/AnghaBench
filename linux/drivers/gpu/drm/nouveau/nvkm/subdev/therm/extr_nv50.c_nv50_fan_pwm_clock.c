
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int chipset; int crystal; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
nv50_fan_pwm_clock(struct nvkm_therm *therm, int line)
{
 struct nvkm_device *device = therm->subdev.device;
 int pwm_clock;


 if (device->chipset > 0x50 && device->chipset < 0x94) {
  u8 pwm_div = nvkm_rd32(device, 0x410c);
  if (nvkm_rd32(device, 0xc040) & 0x800000) {


   pwm_clock = (100000000 >> pwm_div) * 10 / 24;
  } else {

   pwm_clock = (device->crystal * 1000) >> pwm_div;
   pwm_clock /= 20;
  }
 } else {
  pwm_clock = (device->crystal * 1000) / 20;
 }

 return pwm_clock;
}
