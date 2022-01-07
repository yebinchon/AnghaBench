
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {TYPE_1__* import_attach; } ;
struct drm_gem_shmem_object {scalar_t__ vmap_use_count; int * vaddr; struct drm_gem_object base; } ;
struct TYPE_2__ {int dmabuf; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int dma_buf_vunmap (int ,int *) ;
 int drm_gem_shmem_put_pages (struct drm_gem_shmem_object*) ;
 int vunmap (int *) ;

__attribute__((used)) static void drm_gem_shmem_vunmap_locked(struct drm_gem_shmem_object *shmem)
{
 struct drm_gem_object *obj = &shmem->base;

 if (WARN_ON_ONCE(!shmem->vmap_use_count))
  return;

 if (--shmem->vmap_use_count > 0)
  return;

 if (obj->import_attach)
  dma_buf_vunmap(obj->import_attach->dmabuf, shmem->vaddr);
 else
  vunmap(shmem->vaddr);

 shmem->vaddr = ((void*)0);
 drm_gem_shmem_put_pages(shmem);
}
