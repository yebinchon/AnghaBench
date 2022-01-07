
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_umem {int * map; int * bar; TYPE_2__* mmu; scalar_t__ io; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int EEXIST ;
 int IS_ERR (int *) ;
 int nvkm_bar_bar1_vmm (struct nvkm_device*) ;
 struct nvkm_umem* nvkm_umem (struct nvkm_object*) ;
 int nvkm_vmm_put (int ,int **) ;
 int vunmap (int *) ;

__attribute__((used)) static int
nvkm_umem_unmap(struct nvkm_object *object)
{
 struct nvkm_umem *umem = nvkm_umem(object);

 if (!umem->map)
  return -EEXIST;

 if (umem->io) {
  if (!IS_ERR(umem->bar)) {
   struct nvkm_device *device = umem->mmu->subdev.device;
   nvkm_vmm_put(nvkm_bar_bar1_vmm(device), &umem->bar);
  } else {
   umem->bar = ((void*)0);
  }
 } else {
  vunmap(umem->map);
  umem->map = ((void*)0);
 }

 return 0;
}
