
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {int paddr; struct sg_table* sgt; } ;
struct sg_table {int dummy; } ;
struct host1x_bo {int dummy; } ;
typedef int dma_addr_t ;


 struct tegra_bo* host1x_to_tegra_bo (struct host1x_bo*) ;

__attribute__((used)) static dma_addr_t tegra_bo_pin(struct host1x_bo *bo, struct sg_table **sgt)
{
 struct tegra_bo *obj = host1x_to_tegra_bo(bo);

 *sgt = obj->sgt;

 return obj->paddr;
}
