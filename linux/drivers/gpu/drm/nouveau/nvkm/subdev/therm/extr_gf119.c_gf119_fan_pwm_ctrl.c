
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
 int pwm_info (struct nvkm_therm*,int) ;

int
gf119_fan_pwm_ctrl(struct nvkm_therm *therm, int line, bool enable)
{
 struct nvkm_device *device = therm->subdev.device;
 u32 data = enable ? 0x00000040 : 0x00000000;
 int indx = pwm_info(therm, line);
 if (indx < 0)
  return indx;
 else if (indx < 2)
  nvkm_mask(device, 0x00d610 + (line * 0x04), 0x000000c0, data);

 return 0;
}
