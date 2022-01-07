
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int mcp77_vmm ;
 int nv04_vmm_new_ (int *,struct nvkm_mmu*,int ,int,int ,int ,void*,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;

int
mcp77_vmm_new(struct nvkm_mmu *mmu, bool managed, u64 addr, u64 size,
       void *argv, u32 argc, struct lock_class_key *key,
       const char *name, struct nvkm_vmm **pvmm)
{
 return nv04_vmm_new_(&mcp77_vmm, mmu, 0, managed, addr, size,
        argv, argc, key, name, pvmm);
}
