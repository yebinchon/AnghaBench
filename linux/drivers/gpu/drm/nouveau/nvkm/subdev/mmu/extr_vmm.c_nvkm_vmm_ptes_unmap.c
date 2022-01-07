
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_vmm_page {TYPE_1__* desc; } ;
struct nvkm_vmm_desc_func {scalar_t__ unmap; scalar_t__ invalid; scalar_t__ sparse; } ;
struct nvkm_vmm {int dummy; } ;
struct TYPE_2__ {struct nvkm_vmm_desc_func* func; } ;


 int nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,char*,int,int,int *,int *,int *,scalar_t__) ;

__attribute__((used)) static void
nvkm_vmm_ptes_unmap(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
      u64 addr, u64 size, bool sparse, bool pfn)
{
 const struct nvkm_vmm_desc_func *func = page->desc->func;
 nvkm_vmm_iter(vmm, page, addr, size, "unmap", 0, pfn,
        ((void*)0), ((void*)0), ((void*)0),
        sparse ? func->sparse : func->invalid ? func->invalid :
             func->unmap);
}
