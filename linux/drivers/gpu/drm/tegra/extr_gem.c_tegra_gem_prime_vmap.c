
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {void* vaddr; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;

__attribute__((used)) static void *tegra_gem_prime_vmap(struct dma_buf *buf)
{
 struct drm_gem_object *gem = buf->priv;
 struct tegra_bo *bo = to_tegra_bo(gem);

 return bo->vaddr;
}
