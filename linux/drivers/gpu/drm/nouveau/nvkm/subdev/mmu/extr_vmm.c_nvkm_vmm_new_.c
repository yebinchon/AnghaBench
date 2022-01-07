
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_func {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_vmm* kzalloc (int,int ) ;
 int nvkm_vmm_ctor (struct nvkm_vmm_func const*,struct nvkm_mmu*,int ,int,int ,int ,struct lock_class_key*,char const*,struct nvkm_vmm*) ;

int
nvkm_vmm_new_(const struct nvkm_vmm_func *func, struct nvkm_mmu *mmu,
       u32 hdr, bool managed, u64 addr, u64 size,
       struct lock_class_key *key, const char *name,
       struct nvkm_vmm **pvmm)
{
 if (!(*pvmm = kzalloc(sizeof(**pvmm), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_vmm_ctor(func, mmu, hdr, managed, addr, size, key, name, *pvmm);
}
