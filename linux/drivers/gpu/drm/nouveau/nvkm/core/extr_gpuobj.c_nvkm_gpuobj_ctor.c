
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_gpuobj {scalar_t__ size; int heap; int memory; scalar_t__ addr; int * func; TYPE_1__* node; struct nvkm_gpuobj* parent; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ offset; } ;


 int NVKM_MEM_TARGET_INST ;
 int abs (int) ;
 int max (int,int) ;
 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_gpuobj_func ;
 int nvkm_gpuobj_heap ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 scalar_t__ nvkm_memory_addr (int ) ;
 int nvkm_memory_new (struct nvkm_device*,int ,scalar_t__,int ,int,int *) ;
 scalar_t__ nvkm_memory_size (int ) ;
 int nvkm_mm_head (int *,int ,int,scalar_t__,scalar_t__,int ,TYPE_1__**) ;
 int nvkm_mm_init (int *,int ,int ,scalar_t__,int) ;
 int nvkm_mm_tail (int *,int ,int,scalar_t__,scalar_t__,int,TYPE_1__**) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,scalar_t__,int) ;

__attribute__((used)) static int
nvkm_gpuobj_ctor(struct nvkm_device *device, u32 size, int align, bool zero,
   struct nvkm_gpuobj *parent, struct nvkm_gpuobj *gpuobj)
{
 u32 offset;
 int ret;

 if (parent) {
  if (align >= 0) {
   ret = nvkm_mm_head(&parent->heap, 0, 1, size, size,
        max(align, 1), &gpuobj->node);
  } else {
   ret = nvkm_mm_tail(&parent->heap, 0, 1, size, size,
        -align, &gpuobj->node);
  }
  if (ret)
   return ret;

  gpuobj->parent = parent;
  gpuobj->func = &nvkm_gpuobj_func;
  gpuobj->addr = parent->addr + gpuobj->node->offset;
  gpuobj->size = gpuobj->node->length;

  if (zero) {
   nvkm_kmap(gpuobj);
   for (offset = 0; offset < gpuobj->size; offset += 4)
    nvkm_wo32(gpuobj, offset, 0x00000000);
   nvkm_done(gpuobj);
  }
 } else {
  ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, size,
          abs(align), zero, &gpuobj->memory);
  if (ret)
   return ret;

  gpuobj->func = &nvkm_gpuobj_heap;
  gpuobj->addr = nvkm_memory_addr(gpuobj->memory);
  gpuobj->size = nvkm_memory_size(gpuobj->memory);
 }

 return nvkm_mm_init(&gpuobj->heap, 0, 0, gpuobj->size, 1);
}
