
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_timer {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* alarm_fini ) (struct nvkm_timer*) ;} ;


 struct nvkm_timer* nvkm_timer (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_timer*) ;

__attribute__((used)) static int
nvkm_timer_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_timer *tmr = nvkm_timer(subdev);
 tmr->func->alarm_fini(tmr);
 return 0;
}
