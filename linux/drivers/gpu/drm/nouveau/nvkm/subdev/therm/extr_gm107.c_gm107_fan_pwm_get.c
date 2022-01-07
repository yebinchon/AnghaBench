
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static int
gm107_fan_pwm_get(struct nvkm_therm *therm, int line, u32 *divs, u32 *duty)
{
 struct nvkm_device *device = therm->subdev.device;
 *divs = nvkm_rd32(device, 0x10eb20) & 0x1fff;
 *duty = nvkm_rd32(device, 0x10eb24) & 0x1fff;
 return 0;
}
