
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_timer {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* time ) (struct nvkm_timer*,int ) ;int (* init ) (struct nvkm_timer*) ;} ;


 int ktime_get () ;
 int ktime_to_ns (int ) ;
 struct nvkm_timer* nvkm_timer (struct nvkm_subdev*) ;
 int nvkm_timer_alarm_trigger (struct nvkm_timer*) ;
 int stub1 (struct nvkm_timer*) ;
 int stub2 (struct nvkm_timer*,int ) ;

__attribute__((used)) static int
nvkm_timer_init(struct nvkm_subdev *subdev)
{
 struct nvkm_timer *tmr = nvkm_timer(subdev);
 if (tmr->func->init)
  tmr->func->init(tmr);
 tmr->func->time(tmr, ktime_to_ns(ktime_get()));
 nvkm_timer_alarm_trigger(tmr);
 return 0;
}
