
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm_map {int dummy; } ;
struct nvkm_vmm {int dummy; } ;
typedef int nvkm_vmm_pte_func ;


 int nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,char*,int,int,int *,int ,struct nvkm_vmm_map*,int *) ;

__attribute__((used)) static void
nvkm_vmm_ptes_map(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
    u64 addr, u64 size, struct nvkm_vmm_map *map,
    nvkm_vmm_pte_func func)
{
 nvkm_vmm_iter(vmm, page, addr, size, "map", 0, 0,
        ((void*)0), func, map, ((void*)0));
}
