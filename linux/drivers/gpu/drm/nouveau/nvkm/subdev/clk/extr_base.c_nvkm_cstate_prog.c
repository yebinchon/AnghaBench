
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_volt {int dummy; } ;
struct nvkm_therm {int dummy; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_cstate {int voltage; } ;
struct nvkm_pstate {int fanspeed; struct nvkm_cstate base; int list; } ;
struct nvkm_device {struct nvkm_volt* volt; struct nvkm_therm* therm; } ;
struct nvkm_clk {int temp; TYPE_1__* func; struct nvkm_subdev subdev; } ;
struct TYPE_2__ {int (* calc ) (struct nvkm_clk*,struct nvkm_cstate*) ;int (* prog ) (struct nvkm_clk*) ;int (* tidy ) (struct nvkm_clk*) ;} ;


 int ENODEV ;
 int list_empty (int *) ;
 struct nvkm_cstate* nvkm_cstate_find_best (struct nvkm_clk*,struct nvkm_pstate*,struct nvkm_cstate*) ;
 struct nvkm_cstate* nvkm_cstate_get (struct nvkm_clk*,struct nvkm_pstate*,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 int nvkm_therm_cstate (struct nvkm_therm*,int ,int) ;
 int nvkm_volt_set_id (struct nvkm_volt*,int ,int ,int ,int) ;
 int stub1 (struct nvkm_clk*,struct nvkm_cstate*) ;
 int stub2 (struct nvkm_clk*) ;
 int stub3 (struct nvkm_clk*) ;

__attribute__((used)) static int
nvkm_cstate_prog(struct nvkm_clk *clk, struct nvkm_pstate *pstate, int cstatei)
{
 struct nvkm_subdev *subdev = &clk->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_therm *therm = device->therm;
 struct nvkm_volt *volt = device->volt;
 struct nvkm_cstate *cstate;
 int ret;

 if (!list_empty(&pstate->list)) {
  cstate = nvkm_cstate_get(clk, pstate, cstatei);
  cstate = nvkm_cstate_find_best(clk, pstate, cstate);
 } else {
  cstate = &pstate->base;
 }

 if (therm) {
  ret = nvkm_therm_cstate(therm, pstate->fanspeed, +1);
  if (ret && ret != -ENODEV) {
   nvkm_error(subdev, "failed to raise fan speed: %d\n", ret);
   return ret;
  }
 }

 if (volt) {
  ret = nvkm_volt_set_id(volt, cstate->voltage,
           pstate->base.voltage, clk->temp, +1);
  if (ret && ret != -ENODEV) {
   nvkm_error(subdev, "failed to raise voltage: %d\n", ret);
   return ret;
  }
 }

 ret = clk->func->calc(clk, cstate);
 if (ret == 0) {
  ret = clk->func->prog(clk);
  clk->func->tidy(clk);
 }

 if (volt) {
  ret = nvkm_volt_set_id(volt, cstate->voltage,
           pstate->base.voltage, clk->temp, -1);
  if (ret && ret != -ENODEV)
   nvkm_error(subdev, "failed to lower voltage: %d\n", ret);
 }

 if (therm) {
  ret = nvkm_therm_cstate(therm, pstate->fanspeed, -1);
  if (ret && ret != -ENODEV)
   nvkm_error(subdev, "failed to lower fan speed: %d\n", ret);
 }

 return ret;
}
