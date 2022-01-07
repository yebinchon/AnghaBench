
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {int dummy; } ;


 int ENOMEM ;
 unsigned long long nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long,char*,int,int,int ,int *,int *,int *) ;
 int nvkm_vmm_ptes_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long) ;
 int nvkm_vmm_ref_ptes ;

__attribute__((used)) static int
nvkm_vmm_ptes_get(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
    u64 addr, u64 size)
{
 u64 fail = nvkm_vmm_iter(vmm, page, addr, size, "ref", 1, 0,
     nvkm_vmm_ref_ptes, ((void*)0), ((void*)0), ((void*)0));
 if (fail != ~0ULL) {
  if (fail != addr)
   nvkm_vmm_ptes_put(vmm, page, addr, fail - addr);
  return -ENOMEM;
 }
 return 0;
}
