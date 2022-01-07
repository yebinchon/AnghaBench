
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct drm_vgem_gem_object {TYPE_1__ base; int pages; } ;
struct drm_gem_object {int dummy; } ;


 int PAGE_SHIFT ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct drm_vgem_gem_object* to_vgem_bo (struct drm_gem_object*) ;

__attribute__((used)) static struct sg_table *vgem_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct drm_vgem_gem_object *bo = to_vgem_bo(obj);

 return drm_prime_pages_to_sg(bo->pages, bo->base.size >> PAGE_SHIFT);
}
