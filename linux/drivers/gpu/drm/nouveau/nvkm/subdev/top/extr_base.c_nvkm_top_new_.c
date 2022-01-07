
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_top_func {int dummy; } ;
struct nvkm_top {int device; struct nvkm_top_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nvkm_top* kzalloc (int,int ) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_top ;

int
nvkm_top_new_(const struct nvkm_top_func *func, struct nvkm_device *device,
       int index, struct nvkm_top **ptop)
{
 struct nvkm_top *top;
 if (!(top = *ptop = kzalloc(sizeof(*top), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_top, device, index, &top->subdev);
 top->func = func;
 INIT_LIST_HEAD(&top->device);
 return 0;
}
