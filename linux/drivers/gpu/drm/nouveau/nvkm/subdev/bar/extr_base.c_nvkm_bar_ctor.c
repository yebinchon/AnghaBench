
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bar_func {int dummy; } ;
struct nvkm_bar {int lock; struct nvkm_bar_func const* func; int subdev; } ;


 int nvkm_bar ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int spin_lock_init (int *) ;

void
nvkm_bar_ctor(const struct nvkm_bar_func *func, struct nvkm_device *device,
       int index, struct nvkm_bar *bar)
{
 nvkm_subdev_ctor(&nvkm_bar, device, index, &bar->subdev);
 bar->func = func;
 spin_lock_init(&bar->lock);
}
