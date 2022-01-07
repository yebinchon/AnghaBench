
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct tegra_bo {TYPE_2__ gem; scalar_t__ vaddr; } ;
struct host1x_bo {int dummy; } ;
struct TYPE_3__ {int dmabuf; } ;


 int dma_buf_vunmap (int ,void*) ;
 struct tegra_bo* host1x_to_tegra_bo (struct host1x_bo*) ;
 int vunmap (void*) ;

__attribute__((used)) static void tegra_bo_munmap(struct host1x_bo *bo, void *addr)
{
 struct tegra_bo *obj = host1x_to_tegra_bo(bo);

 if (obj->vaddr)
  return;
 else if (obj->gem.import_attach)
  dma_buf_vunmap(obj->gem.import_attach->dmabuf, addr);
 else
  vunmap(addr);
}
