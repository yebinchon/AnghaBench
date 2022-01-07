
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct etnaviv_gem_object {int pages; } ;
struct drm_gem_object {int size; } ;


 int EINVAL ;
 struct sg_table* ERR_PTR (int ) ;
 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;

struct sg_table *etnaviv_gem_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 int npages = obj->size >> PAGE_SHIFT;

 if (WARN_ON(!etnaviv_obj->pages))
  return ERR_PTR(-EINVAL);

 return drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
}
