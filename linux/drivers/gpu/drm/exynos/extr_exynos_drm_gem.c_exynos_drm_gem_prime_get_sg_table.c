
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct exynos_drm_gem {int size; int pages; } ;
struct drm_gem_object {int dummy; } ;


 int PAGE_SHIFT ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct exynos_drm_gem* to_exynos_gem (struct drm_gem_object*) ;

struct sg_table *exynos_drm_gem_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct exynos_drm_gem *exynos_gem = to_exynos_gem(obj);
 int npages;

 npages = exynos_gem->size >> PAGE_SHIFT;

 return drm_prime_pages_to_sg(exynos_gem->pages, npages);
}
