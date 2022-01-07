
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct nvkm_vmm_page {size_t type; scalar_t__ shift; } ;
struct nvkm_uvmm {TYPE_2__* vmm; } ;
struct nvif_vmm_page_v0 {size_t index; int sparse; int vram; int host; int comp; scalar_t__ shift; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {struct nvkm_vmm_page* page; } ;


 int EINVAL ;
 int ENOSYS ;
 size_t NVKM_VMM_PAGE_COMP ;
 size_t NVKM_VMM_PAGE_HOST ;
 size_t NVKM_VMM_PAGE_SPARSE ;
 size_t NVKM_VMM_PAGE_VRAM ;
 int nvif_unpack (int,void**,int *,struct nvif_vmm_page_v0,int ,int ,int) ;

__attribute__((used)) static int
nvkm_uvmm_mthd_page(struct nvkm_uvmm *uvmm, void *argv, u32 argc)
{
 union {
  struct nvif_vmm_page_v0 v0;
 } *args = argv;
 const struct nvkm_vmm_page *page;
 int ret = -ENOSYS;
 u8 type, index, nr;

 page = uvmm->vmm->func->page;
 for (nr = 0; page[nr].shift; nr++);

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  if ((index = args->v0.index) >= nr)
   return -EINVAL;
  type = page[index].type;
  args->v0.shift = page[index].shift;
  args->v0.sparse = !!(type & NVKM_VMM_PAGE_SPARSE);
  args->v0.vram = !!(type & NVKM_VMM_PAGE_VRAM);
  args->v0.host = !!(type & NVKM_VMM_PAGE_HOST);
  args->v0.comp = !!(type & NVKM_VMM_PAGE_COMP);
 } else
  return -ENOSYS;

 return 0;
}
