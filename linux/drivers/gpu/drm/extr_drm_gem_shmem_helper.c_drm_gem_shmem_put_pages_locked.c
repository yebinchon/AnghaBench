
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_gem_shmem_object {scalar_t__ pages_use_count; int * pages; int pages_mark_accessed_on_put; int pages_mark_dirty_on_put; struct drm_gem_object base; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int drm_gem_put_pages (struct drm_gem_object*,int *,int ,int ) ;

__attribute__((used)) static void drm_gem_shmem_put_pages_locked(struct drm_gem_shmem_object *shmem)
{
 struct drm_gem_object *obj = &shmem->base;

 if (WARN_ON_ONCE(!shmem->pages_use_count))
  return;

 if (--shmem->pages_use_count > 0)
  return;

 drm_gem_put_pages(obj, shmem->pages,
     shmem->pages_mark_dirty_on_put,
     shmem->pages_mark_accessed_on_put);
 shmem->pages = ((void*)0);
}
