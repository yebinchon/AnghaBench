
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct lima_bo {int pages; } ;
struct drm_gem_object {int size; } ;


 int PAGE_SHIFT ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct lima_bo* to_lima_bo (struct drm_gem_object*) ;

struct sg_table *lima_gem_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct lima_bo *bo = to_lima_bo(obj);
 int npages = obj->size >> PAGE_SHIFT;

 return drm_prime_pages_to_sg(bo->pages, npages);
}
