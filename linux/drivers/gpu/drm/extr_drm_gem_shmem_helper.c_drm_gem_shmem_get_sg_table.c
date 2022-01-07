
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_shmem_object {int pages; } ;
struct drm_gem_object {int size; } ;


 int PAGE_SHIFT ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

struct sg_table *drm_gem_shmem_get_sg_table(struct drm_gem_object *obj)
{
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 return drm_prime_pages_to_sg(shmem->pages, obj->size >> PAGE_SHIFT);
}
