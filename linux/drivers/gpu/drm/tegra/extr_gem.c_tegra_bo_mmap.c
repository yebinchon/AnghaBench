
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct tegra_bo {void* vaddr; int num_pages; int pages; TYPE_2__ gem; } ;
struct host1x_bo {int dummy; } ;
struct TYPE_3__ {int dmabuf; } ;


 int PAGE_KERNEL ;
 int VM_MAP ;
 void* dma_buf_vmap (int ) ;
 struct tegra_bo* host1x_to_tegra_bo (struct host1x_bo*) ;
 int pgprot_writecombine (int ) ;
 void* vmap (int ,int ,int ,int ) ;

__attribute__((used)) static void *tegra_bo_mmap(struct host1x_bo *bo)
{
 struct tegra_bo *obj = host1x_to_tegra_bo(bo);

 if (obj->vaddr)
  return obj->vaddr;
 else if (obj->gem.import_attach)
  return dma_buf_vmap(obj->gem.import_attach->dmabuf);
 else
  return vmap(obj->pages, obj->num_pages, VM_MAP,
       pgprot_writecombine(PAGE_KERNEL));
}
