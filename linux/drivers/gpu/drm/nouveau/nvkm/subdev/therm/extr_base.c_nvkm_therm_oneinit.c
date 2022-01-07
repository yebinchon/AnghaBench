
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;
struct nvkm_subdev {int dummy; } ;


 int NVKM_THERM_CTRL_AUTO ;
 struct nvkm_therm* nvkm_therm (struct nvkm_subdev*) ;
 int nvkm_therm_clkgate_oneinit (struct nvkm_therm*) ;
 int nvkm_therm_fan_ctor (struct nvkm_therm*) ;
 int nvkm_therm_fan_mode (struct nvkm_therm*,int ) ;
 int nvkm_therm_ic_ctor (struct nvkm_therm*) ;
 int nvkm_therm_sensor_ctor (struct nvkm_therm*) ;
 int nvkm_therm_sensor_preinit (struct nvkm_therm*) ;

__attribute__((used)) static int
nvkm_therm_oneinit(struct nvkm_subdev *subdev)
{
 struct nvkm_therm *therm = nvkm_therm(subdev);
 nvkm_therm_sensor_ctor(therm);
 nvkm_therm_ic_ctor(therm);
 nvkm_therm_fan_ctor(therm);
 nvkm_therm_fan_mode(therm, NVKM_THERM_CTRL_AUTO);
 nvkm_therm_sensor_preinit(therm);
 nvkm_therm_clkgate_oneinit(therm);
 return 0;
}
