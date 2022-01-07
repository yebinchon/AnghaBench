
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_timer {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_timer*) ;} ;


 struct nvkm_timer* nvkm_timer (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_timer*) ;

__attribute__((used)) static void
nvkm_timer_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_timer *tmr = nvkm_timer(subdev);
 tmr->func->intr(tmr);
}
