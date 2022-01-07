
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct nvkm_fault_func {TYPE_1__ user; } ;
struct TYPE_4__ {int base; int ctor; } ;
struct nvkm_fault {TYPE_2__ user; struct nvkm_fault_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_fault* kzalloc (int,int ) ;
 int nvkm_fault ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_ufault_new ;

int
nvkm_fault_new_(const struct nvkm_fault_func *func, struct nvkm_device *device,
  int index, struct nvkm_fault **pfault)
{
 struct nvkm_fault *fault;
 if (!(fault = *pfault = kzalloc(sizeof(*fault), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_fault, device, index, &fault->subdev);
 fault->func = func;
 fault->user.ctor = nvkm_ufault_new;
 fault->user.base = func->user.base;
 return 0;
}
