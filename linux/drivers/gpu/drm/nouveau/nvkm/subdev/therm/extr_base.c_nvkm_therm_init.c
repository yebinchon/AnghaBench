
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_therm {scalar_t__ suspend; TYPE_2__* fan; TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {int percent; } ;
struct TYPE_3__ {int (* init ) (struct nvkm_therm*) ;} ;


 struct nvkm_therm* nvkm_therm (struct nvkm_subdev*) ;
 int nvkm_therm_fan_init (struct nvkm_therm*) ;
 int nvkm_therm_fan_mode (struct nvkm_therm*,scalar_t__) ;
 int nvkm_therm_fan_set (struct nvkm_therm*,int,int ) ;
 int nvkm_therm_sensor_init (struct nvkm_therm*) ;
 int stub1 (struct nvkm_therm*) ;

__attribute__((used)) static int
nvkm_therm_init(struct nvkm_subdev *subdev)
{
 struct nvkm_therm *therm = nvkm_therm(subdev);

 if (therm->func->init)
  therm->func->init(therm);

 if (therm->suspend >= 0) {

  if (therm->suspend > 0)
   nvkm_therm_fan_set(therm, 1, therm->fan->percent);

  nvkm_therm_fan_mode(therm, therm->suspend);
 }

 nvkm_therm_sensor_init(therm);
 nvkm_therm_fan_init(therm);
 return 0;
}
