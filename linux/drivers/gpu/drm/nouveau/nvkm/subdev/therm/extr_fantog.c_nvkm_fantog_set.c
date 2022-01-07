
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; scalar_t__ fan; } ;
struct TYPE_4__ {int line; } ;
struct nvkm_fantog {TYPE_2__ func; } ;
struct TYPE_3__ {int (* pwm_ctrl ) (struct nvkm_therm*,int ,int) ;} ;


 int nvkm_fantog_update (struct nvkm_fantog*,int) ;
 int stub1 (struct nvkm_therm*,int ,int) ;

__attribute__((used)) static int
nvkm_fantog_set(struct nvkm_therm *therm, int percent)
{
 struct nvkm_fantog *fan = (void *)therm->fan;
 if (therm->func->pwm_ctrl)
  therm->func->pwm_ctrl(therm, fan->func.line, 0);
 nvkm_fantog_update(fan, percent);
 return 0;
}
