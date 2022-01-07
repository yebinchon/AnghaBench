
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_timer {TYPE_1__* func; } ;
struct TYPE_2__ {int (* read ) (struct nvkm_timer*) ;} ;


 int stub1 (struct nvkm_timer*) ;

u64
nvkm_timer_read(struct nvkm_timer *tmr)
{
 return tmr->func->read(tmr);
}
