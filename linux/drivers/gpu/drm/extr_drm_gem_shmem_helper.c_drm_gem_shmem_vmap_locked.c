
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int size; TYPE_1__* import_attach; } ;
struct drm_gem_shmem_object {void* vaddr; scalar_t__ vmap_use_count; int pages; struct drm_gem_object base; } ;
struct TYPE_2__ {int dmabuf; } ;


 int DRM_DEBUG_KMS (char*) ;
 int ENOMEM ;
 void* ERR_PTR (int) ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int VM_MAP ;
 void* dma_buf_vmap (int ) ;
 int drm_gem_shmem_get_pages (struct drm_gem_shmem_object*) ;
 int drm_gem_shmem_put_pages (struct drm_gem_shmem_object*) ;
 int pgprot_writecombine (int ) ;
 void* vmap (int ,int,int ,int ) ;

__attribute__((used)) static void *drm_gem_shmem_vmap_locked(struct drm_gem_shmem_object *shmem)
{
 struct drm_gem_object *obj = &shmem->base;
 int ret;

 if (shmem->vmap_use_count++ > 0)
  return shmem->vaddr;

 ret = drm_gem_shmem_get_pages(shmem);
 if (ret)
  goto err_zero_use;

 if (obj->import_attach)
  shmem->vaddr = dma_buf_vmap(obj->import_attach->dmabuf);
 else
  shmem->vaddr = vmap(shmem->pages, obj->size >> PAGE_SHIFT,
        VM_MAP, pgprot_writecombine(PAGE_KERNEL));

 if (!shmem->vaddr) {
  DRM_DEBUG_KMS("Failed to vmap pages\n");
  ret = -ENOMEM;
  goto err_put_pages;
 }

 return shmem->vaddr;

err_put_pages:
 drm_gem_shmem_put_pages(shmem);
err_zero_use:
 shmem->vmap_use_count = 0;

 return ERR_PTR(ret);
}
