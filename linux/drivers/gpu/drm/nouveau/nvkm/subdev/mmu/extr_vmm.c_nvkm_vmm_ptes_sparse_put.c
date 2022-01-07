
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_vmm_page {TYPE_2__* desc; } ;
struct nvkm_vmm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {scalar_t__ unmap; scalar_t__ invalid; } ;


 int nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,char*,int,int,int ,int *,int *,scalar_t__) ;
 int nvkm_vmm_sparse_unref_ptes ;

__attribute__((used)) static void
nvkm_vmm_ptes_sparse_put(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
    u64 addr, u64 size)
{
 nvkm_vmm_iter(vmm, page, addr, size, "sparse unref", 0, 0,
        nvkm_vmm_sparse_unref_ptes, ((void*)0), ((void*)0),
        page->desc->func->invalid ?
        page->desc->func->invalid : page->desc->func->unmap);
}
