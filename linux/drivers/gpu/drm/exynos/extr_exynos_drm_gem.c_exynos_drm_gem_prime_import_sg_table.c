
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct exynos_drm_gem {int size; struct drm_gem_object base; int pages; int flags; struct sg_table* sgt; int dma_addr; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int size; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_PTR (int) ;
 int EXYNOS_BO_CONTIG ;
 int EXYNOS_BO_NONCONTIG ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct exynos_drm_gem*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (struct exynos_drm_gem*) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,int ,int *,int) ;
 struct exynos_drm_gem* exynos_drm_gem_init (struct drm_device*,int ) ;
 int kfree (struct exynos_drm_gem*) ;
 int kvfree (int ) ;
 int kvmalloc_array (int,int,int ) ;
 int sg_dma_address (int ) ;

struct drm_gem_object *
exynos_drm_gem_prime_import_sg_table(struct drm_device *dev,
         struct dma_buf_attachment *attach,
         struct sg_table *sgt)
{
 struct exynos_drm_gem *exynos_gem;
 int npages;
 int ret;

 exynos_gem = exynos_drm_gem_init(dev, attach->dmabuf->size);
 if (IS_ERR(exynos_gem)) {
  ret = PTR_ERR(exynos_gem);
  return ERR_PTR(ret);
 }

 exynos_gem->dma_addr = sg_dma_address(sgt->sgl);

 npages = exynos_gem->size >> PAGE_SHIFT;
 exynos_gem->pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (!exynos_gem->pages) {
  ret = -ENOMEM;
  goto err;
 }

 ret = drm_prime_sg_to_page_addr_arrays(sgt, exynos_gem->pages, ((void*)0),
            npages);
 if (ret < 0)
  goto err_free_large;

 exynos_gem->sgt = sgt;

 if (sgt->nents == 1) {

  exynos_gem->flags |= EXYNOS_BO_CONTIG;
 } else {






  exynos_gem->flags |= EXYNOS_BO_NONCONTIG;
 }

 return &exynos_gem->base;

err_free_large:
 kvfree(exynos_gem->pages);
err:
 drm_gem_object_release(&exynos_gem->base);
 kfree(exynos_gem);
 return ERR_PTR(ret);
}
