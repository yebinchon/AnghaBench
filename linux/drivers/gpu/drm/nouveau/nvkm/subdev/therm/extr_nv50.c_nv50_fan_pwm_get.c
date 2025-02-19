
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int EINVAL ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int pwm_info (struct nvkm_therm*,int*,int*,int*) ;

int
nv50_fan_pwm_get(struct nvkm_therm *therm, int line, u32 *divs, u32 *duty)
{
 struct nvkm_device *device = therm->subdev.device;
 int ctrl, id, ret = pwm_info(therm, &line, &ctrl, &id);
 if (ret)
  return ret;

 if (nvkm_rd32(device, ctrl) & (1 << line)) {
  *divs = nvkm_rd32(device, 0x00e114 + (id * 8));
  *duty = nvkm_rd32(device, 0x00e118 + (id * 8));
  return 0;
 }

 return -EINVAL;
}
