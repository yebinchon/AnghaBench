
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int dummy; } ;
struct falcon {struct tegra_drm* data; } ;
typedef int dma_addr_t ;


 void* tegra_drm_alloc (struct tegra_drm*,size_t,int *) ;

__attribute__((used)) static void *vic_falcon_alloc(struct falcon *falcon, size_t size,
         dma_addr_t *iova)
{
 struct tegra_drm *tegra = falcon->data;

 return tegra_drm_alloc(tegra, size, iova);
}
