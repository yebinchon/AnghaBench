
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int pwm_info (struct nvkm_therm*,int) ;

int
gf119_fan_pwm_set(struct nvkm_therm *therm, int line, u32 divs, u32 duty)
{
 struct nvkm_device *device = therm->subdev.device;
 int indx = pwm_info(therm, line);
 if (indx < 0)
  return indx;
 else if (indx < 2) {
  nvkm_wr32(device, 0x00e114 + (indx * 8), divs);
  nvkm_wr32(device, 0x00e118 + (indx * 8), duty | 0x80000000);
 } else if (indx == 2) {
  nvkm_mask(device, 0x0200d8, 0x1fff, divs);
  nvkm_wr32(device, 0x0200dc, duty | 0x40000000);
 }
 return 0;
}
