
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nvkm_timer_wait {int reads; scalar_t__ time0; scalar_t__ time1; scalar_t__ limit; TYPE_1__* tmr; } ;
struct nvkm_subdev {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;


 scalar_t__ ETIMEDOUT ;
 int nvkm_fatal (struct nvkm_subdev*,char*,scalar_t__) ;
 scalar_t__ nvkm_timer_read (TYPE_1__*) ;

s64
nvkm_timer_wait_test(struct nvkm_timer_wait *wait)
{
 struct nvkm_subdev *subdev = &wait->tmr->subdev;
 u64 time = nvkm_timer_read(wait->tmr);

 if (wait->reads == 0) {
  wait->time0 = time;
  wait->time1 = time;
 }

 if (wait->time1 == time) {
  if (wait->reads++ == 16) {
   nvkm_fatal(subdev, "stalled at %016llx\n", time);
   return -ETIMEDOUT;
  }
 } else {
  wait->time1 = time;
  wait->reads = 1;
 }

 if (wait->time1 - wait->time0 > wait->limit)
  return -ETIMEDOUT;

 return wait->time1 - wait->time0;
}
