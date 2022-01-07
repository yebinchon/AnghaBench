
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENODEV ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static int
pwm_info(struct nvkm_therm *therm, int line)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 u32 gpio = nvkm_rd32(device, 0x00d610 + (line * 0x04));

 switch (gpio & 0x000000c0) {
 case 0x00000000:
 case 0x00000040:
  switch (gpio & 0x0000001f) {
  case 0x00: return 2;
  case 0x19: return 1;
  case 0x1c: return 0;
  case 0x1e: return 2;
  default:
   break;
  }
 default:
  break;
 }

 nvkm_error(subdev, "GPIO %d unknown PWM: %08x\n", line, gpio);
 return -ENODEV;
}
