
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_vma {int dummy; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {struct nvkm_memory* ram; } ;


 TYPE_1__* nv50_instobj (struct nvkm_memory*) ;
 int nvkm_memory_map (struct nvkm_memory*,int ,struct nvkm_vmm*,struct nvkm_vma*,void*,int ) ;

__attribute__((used)) static int
nv50_instobj_map(struct nvkm_memory *memory, u64 offset, struct nvkm_vmm *vmm,
   struct nvkm_vma *vma, void *argv, u32 argc)
{
 memory = nv50_instobj(memory)->ram;
 return nvkm_memory_map(memory, offset, vmm, vma, argv, argc);
}
