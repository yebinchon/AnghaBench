
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_therm {int cstate; struct nvkm_subdev subdev; } ;


 int nvkm_debug (struct nvkm_subdev*,char*,int) ;
 int nvkm_therm_update (struct nvkm_therm*,int) ;

int
nvkm_therm_cstate(struct nvkm_therm *therm, int fan, int dir)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 if (!dir || (dir < 0 && fan < therm->cstate) ||
      (dir > 0 && fan > therm->cstate)) {
  nvkm_debug(subdev, "default fan speed -> %d%%\n", fan);
  therm->cstate = fan;
  nvkm_therm_update(therm, -1);
 }
 return 0;
}
