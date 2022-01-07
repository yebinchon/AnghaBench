
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int gp100_vmm ;
 int gp100_vmm_new_ (int *,struct nvkm_mmu*,int,int ,int ,void*,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;

int
gp100_vmm_new(struct nvkm_mmu *mmu, bool managed, u64 addr, u64 size,
       void *argv, u32 argc, struct lock_class_key *key,
       const char *name, struct nvkm_vmm **pvmm)
{
 return gp100_vmm_new_(&gp100_vmm, mmu, managed, addr, size,
         argv, argc, key, name, pvmm);
}
