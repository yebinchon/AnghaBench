
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
typedef int nvkm_vmm_pte_func ;


 int ENOMEM ;
 unsigned long long nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long,char*,int,int,int ,int ,struct nvkm_vmm_map*,int *) ;
 int nvkm_vmm_ptes_unmap_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long,int,int) ;
 int nvkm_vmm_ref_ptes ;

__attribute__((used)) static int
nvkm_vmm_ptes_get_map(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
        u64 addr, u64 size, struct nvkm_vmm_map *map,
        nvkm_vmm_pte_func func)
{
 u64 fail = nvkm_vmm_iter(vmm, page, addr, size, "ref + map", 1,
     0, nvkm_vmm_ref_ptes, func, map, ((void*)0));
 if (fail != ~0ULL) {
  if ((size = fail - addr))
   nvkm_vmm_ptes_unmap_put(vmm, page, addr, size, 0, 0);
  return -ENOMEM;
 }
 return 0;
}
