
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_func {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct nv04_vmm_vn {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int ENOSYS ;
 int nvif_unvers (int ,void**,int *,struct nv04_vmm_vn) ;
 int nvkm_vmm_new_ (struct nvkm_vmm_func const*,struct nvkm_mmu*,int ,int,int ,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;

int
nv04_vmm_new_(const struct nvkm_vmm_func *func, struct nvkm_mmu *mmu,
       u32 pd_header, bool managed, u64 addr, u64 size,
       void *argv, u32 argc, struct lock_class_key *key,
       const char *name, struct nvkm_vmm **pvmm)
{
 union {
  struct nv04_vmm_vn vn;
 } *args = argv;
 int ret;

 ret = nvkm_vmm_new_(func, mmu, pd_header, managed, addr, size,
       key, name, pvmm);
 if (ret)
  return ret;

 return nvif_unvers(-ENOSYS, &argv, &argc, args->vn);
}
