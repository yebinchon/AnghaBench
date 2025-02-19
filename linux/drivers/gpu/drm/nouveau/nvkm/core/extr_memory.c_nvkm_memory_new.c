
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_instmem {int dummy; } ;
struct nvkm_device {struct nvkm_instmem* imem; } ;
typedef enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;


 int ENOSYS ;
 int NVKM_MEM_TARGET_INST ;
 int nvkm_instobj_new (struct nvkm_instmem*,int ,int ,int,struct nvkm_memory**) ;
 scalar_t__ unlikely (int) ;

int
nvkm_memory_new(struct nvkm_device *device, enum nvkm_memory_target target,
  u64 size, u32 align, bool zero,
  struct nvkm_memory **pmemory)
{
 struct nvkm_instmem *imem = device->imem;
 struct nvkm_memory *memory;
 int ret = -ENOSYS;

 if (unlikely(target != NVKM_MEM_TARGET_INST || !imem))
  return -ENOSYS;

 ret = nvkm_instobj_new(imem, size, align, zero, &memory);
 if (ret)
  return ret;

 *pmemory = memory;
 return 0;
}
