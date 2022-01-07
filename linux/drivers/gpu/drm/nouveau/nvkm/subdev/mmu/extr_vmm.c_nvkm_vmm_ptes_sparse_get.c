
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct nvkm_vmm_page {int type; TYPE_2__* desc; } ;
struct nvkm_vmm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {int sparse; } ;


 int EINVAL ;
 int ENOMEM ;
 int NVKM_VMM_PAGE_SPARSE ;
 unsigned long long nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long,char*,int,int,int ,int *,int *,int ) ;
 int nvkm_vmm_ptes_sparse_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,unsigned long long,unsigned long long) ;
 int nvkm_vmm_sparse_ref_ptes ;

__attribute__((used)) static int
nvkm_vmm_ptes_sparse_get(struct nvkm_vmm *vmm, const struct nvkm_vmm_page *page,
    u64 addr, u64 size)
{
 if ((page->type & NVKM_VMM_PAGE_SPARSE)) {
  u64 fail = nvkm_vmm_iter(vmm, page, addr, size, "sparse ref",
      1, 0, nvkm_vmm_sparse_ref_ptes,
      ((void*)0), ((void*)0), page->desc->func->sparse);
  if (fail != ~0ULL) {
   if ((size = fail - addr))
    nvkm_vmm_ptes_sparse_put(vmm, page, addr, size);
   return -ENOMEM;
  }
  return 0;
 }
 return -EINVAL;
}
