
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_timer_func {int dummy; } ;
struct nvkm_timer {int lock; int alarms; struct nvkm_timer_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nvkm_timer* kzalloc (int,int ) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_timer ;
 int spin_lock_init (int *) ;

int
nvkm_timer_new_(const struct nvkm_timer_func *func, struct nvkm_device *device,
  int index, struct nvkm_timer **ptmr)
{
 struct nvkm_timer *tmr;

 if (!(tmr = *ptmr = kzalloc(sizeof(*tmr), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_subdev_ctor(&nvkm_timer, device, index, &tmr->subdev);
 tmr->func = func;
 INIT_LIST_HEAD(&tmr->alarms);
 spin_lock_init(&tmr->lock);
 return 0;
}
