
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {int dummy; } ;


 int nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,char*,int,int,int ,int *,int *,int *) ;
 int nvkm_vmm_unref_ptes ;

__attribute__((used)) static void
nvkm_vmm_ptes_put(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
    u64 addr, u64 size)
{
 nvkm_vmm_iter(vmm, page, addr, size, "unref", 0, 0,
        nvkm_vmm_unref_ptes, ((void*)0), ((void*)0), ((void*)0));
}
