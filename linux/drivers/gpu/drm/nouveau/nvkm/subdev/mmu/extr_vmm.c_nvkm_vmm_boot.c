
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nvkm_vmm_page {scalar_t__ shift; } ;
struct nvkm_vmm {int bootstrapped; scalar_t__ start; scalar_t__ limit; TYPE_1__* func; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;


 int nvkm_vmm_boot_ptes ;
 int nvkm_vmm_iter (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__,scalar_t__ const,char*,int,int,int ,int *,int *,int *) ;
 int nvkm_vmm_ptes_get (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__,scalar_t__ const) ;

int
nvkm_vmm_boot(struct nvkm_vmm *vmm)
{
 const struct nvkm_vmm_page *page = vmm->func->page;
 const u64 limit = vmm->limit - vmm->start;
 int ret;

 while (page[1].shift)
  page++;

 ret = nvkm_vmm_ptes_get(vmm, page, vmm->start, limit);
 if (ret)
  return ret;

 nvkm_vmm_iter(vmm, page, vmm->start, limit, "bootstrap", 0, 0,
        nvkm_vmm_boot_ptes, ((void*)0), ((void*)0), ((void*)0));
 vmm->bootstrapped = 1;
 return 0;
}
