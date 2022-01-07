
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct tegra_bo {void* vaddr; scalar_t__ pages; TYPE_2__ gem; } ;
struct host1x_bo {int dummy; } ;
struct TYPE_3__ {int dmabuf; } ;


 int PAGE_KERNEL ;
 unsigned int PAGE_SIZE ;
 int VM_MAP ;
 void* dma_buf_kmap (int ,unsigned int) ;
 struct tegra_bo* host1x_to_tegra_bo (struct host1x_bo*) ;
 int pgprot_writecombine (int ) ;
 void* vmap (scalar_t__,int,int ,int ) ;

__attribute__((used)) static void *tegra_bo_kmap(struct host1x_bo *bo, unsigned int page)
{
 struct tegra_bo *obj = host1x_to_tegra_bo(bo);

 if (obj->vaddr)
  return obj->vaddr + page * PAGE_SIZE;
 else if (obj->gem.import_attach)
  return dma_buf_kmap(obj->gem.import_attach->dmabuf, page);
 else
  return vmap(obj->pages + page, 1, VM_MAP,
       pgprot_writecombine(PAGE_KERNEL));
}
