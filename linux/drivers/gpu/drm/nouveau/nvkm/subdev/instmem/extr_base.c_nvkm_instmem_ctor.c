
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_instmem_func {int dummy; } ;
struct nvkm_instmem {int boot; int list; int lock; struct nvkm_instmem_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int nvkm_instmem ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int spin_lock_init (int *) ;

void
nvkm_instmem_ctor(const struct nvkm_instmem_func *func,
    struct nvkm_device *device, int index,
    struct nvkm_instmem *imem)
{
 nvkm_subdev_ctor(&nvkm_instmem, device, index, &imem->subdev);
 imem->func = func;
 spin_lock_init(&imem->lock);
 INIT_LIST_HEAD(&imem->list);
 INIT_LIST_HEAD(&imem->boot);
}
