
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {int mode; int suspend; TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_therm*) ;} ;


 int NVKM_THERM_CTRL_NONE ;
 struct nvkm_therm* nvkm_therm (struct nvkm_subdev*) ;
 int nvkm_therm_fan_fini (struct nvkm_therm*,int) ;
 int nvkm_therm_sensor_fini (struct nvkm_therm*,int) ;
 int stub1 (struct nvkm_therm*) ;

__attribute__((used)) static int
nvkm_therm_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_therm *therm = nvkm_therm(subdev);

 if (therm->func->fini)
  therm->func->fini(therm);

 nvkm_therm_fan_fini(therm, suspend);
 nvkm_therm_sensor_fini(therm, suspend);

 if (suspend) {
  therm->suspend = therm->mode;
  therm->mode = NVKM_THERM_CTRL_NONE;
 }

 return 0;
}
