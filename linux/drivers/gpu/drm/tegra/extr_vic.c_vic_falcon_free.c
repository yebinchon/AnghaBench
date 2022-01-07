
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int dummy; } ;
struct falcon {struct tegra_drm* data; } ;
typedef int dma_addr_t ;


 void tegra_drm_free (struct tegra_drm*,size_t,void*,int ) ;

__attribute__((used)) static void vic_falcon_free(struct falcon *falcon, size_t size,
       dma_addr_t iova, void *va)
{
 struct tegra_drm *tegra = falcon->data;

 return tegra_drm_free(tegra, size, va, iova);
}
