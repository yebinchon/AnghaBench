
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {int dummy; } ;
struct nvkm_gpuobj {int memory; } ;


 int nvkm_memory_map (int ,int ,struct nvkm_vmm*,struct nvkm_vma*,void*,int ) ;

__attribute__((used)) static int
nvkm_gpuobj_heap_map(struct nvkm_gpuobj *gpuobj, u64 offset,
       struct nvkm_vmm *vmm, struct nvkm_vma *vma,
       void *argv, u32 argc)
{
 return nvkm_memory_map(gpuobj->memory, offset, vmm, vma, argv, argc);
}
