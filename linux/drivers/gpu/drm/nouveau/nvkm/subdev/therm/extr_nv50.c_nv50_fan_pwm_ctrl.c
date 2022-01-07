
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
 int pwm_info (struct nvkm_therm*,int*,int*,int*) ;

int
nv50_fan_pwm_ctrl(struct nvkm_therm *therm, int line, bool enable)
{
 struct nvkm_device *device = therm->subdev.device;
 u32 data = enable ? 0x00000001 : 0x00000000;
 int ctrl, id, ret = pwm_info(therm, &line, &ctrl, &id);
 if (ret == 0)
  nvkm_mask(device, ctrl, 0x00010001 << line, data << line);
 return ret;
}
