
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {int mode; TYPE_1__* func; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* temp_get ) (struct nvkm_therm*) ;} ;


 int ARRAY_SIZE (char const**) ;
 int EINVAL ;
 int NVKM_THERM_CTRL_AUTO ;
 int NVKM_THERM_CTRL_NONE ;
 int nvkm_debug (struct nvkm_subdev*,char*,char const*) ;
 scalar_t__ nvkm_pmu_fan_controlled (struct nvkm_device*) ;
 int nvkm_therm_update (struct nvkm_therm*,int) ;
 scalar_t__ stub1 (struct nvkm_therm*) ;

int
nvkm_therm_fan_mode(struct nvkm_therm *therm, int mode)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 static const char *name[] = {
  "disabled",
  "manual",
  "automatic"
 };


 if ((mode >= ARRAY_SIZE(name)) ||
     (mode != NVKM_THERM_CTRL_NONE && nvkm_pmu_fan_controlled(device)))
  return -EINVAL;



 if (mode == NVKM_THERM_CTRL_AUTO &&
     therm->func->temp_get(therm) < 0)
  return -EINVAL;

 if (therm->mode == mode)
  return 0;

 nvkm_debug(subdev, "fan management: %s\n", name[mode]);
 nvkm_therm_update(therm, mode);
 return 0;
}
