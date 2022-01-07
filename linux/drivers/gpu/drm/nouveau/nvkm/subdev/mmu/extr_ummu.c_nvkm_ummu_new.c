
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_ummu {struct nvkm_object object; struct nvkm_mmu* mmu; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_mmu {int type_nr; int heap_nr; int dma_bits; TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mmu* mmu; } ;
struct nvif_mmu_v0 {int kind_nr; int type_nr; int heap_nr; int dmabits; } ;
struct TYPE_2__ {int (* kind ) (struct nvkm_mmu*,int*) ;} ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 struct nvkm_ummu* kzalloc (int,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_mmu_v0,int ,int ,int) ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int nvkm_ummu ;
 int stub1 (struct nvkm_mmu*,int*) ;

int
nvkm_ummu_new(struct nvkm_device *device, const struct nvkm_oclass *oclass,
       void *argv, u32 argc, struct nvkm_object **pobject)
{
 union {
  struct nvif_mmu_v0 v0;
 } *args = argv;
 struct nvkm_mmu *mmu = device->mmu;
 struct nvkm_ummu *ummu;
 int ret = -ENOSYS, kinds = 0;

 if (mmu->func->kind)
  mmu->func->kind(mmu, &kinds);

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  args->v0.dmabits = mmu->dma_bits;
  args->v0.heap_nr = mmu->heap_nr;
  args->v0.type_nr = mmu->type_nr;
  args->v0.kind_nr = kinds;
 } else
  return ret;

 if (!(ummu = kzalloc(sizeof(*ummu), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nvkm_ummu, oclass, &ummu->object);
 ummu->mmu = mmu;
 *pobject = &ummu->object;
 return 0;
}
