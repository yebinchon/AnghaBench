
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_gem_shmem_object {int madv; TYPE_3__* sgt; } ;
struct drm_gem_object {int filp; int vma_node; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* anon_inode; int dev; } ;
typedef int loff_t ;
struct TYPE_8__ {int nents; int sgl; } ;
struct TYPE_7__ {int i_mapping; } ;
struct TYPE_6__ {int i_mapping; } ;


 int DMA_BIDIRECTIONAL ;
 int WARN_ON (int) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int drm_gem_free_mmap_offset (struct drm_gem_object*) ;
 int drm_gem_shmem_is_purgeable (struct drm_gem_shmem_object*) ;
 int drm_gem_shmem_put_pages_locked (struct drm_gem_shmem_object*) ;
 int drm_vma_node_unmap (int *,int ) ;
 TYPE_2__* file_inode (int ) ;
 int invalidate_mapping_pages (int ,int ,int ) ;
 int kfree (TYPE_3__*) ;
 int sg_free_table (TYPE_3__*) ;
 int shmem_truncate_range (TYPE_2__*,int ,int ) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

void drm_gem_shmem_purge_locked(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 WARN_ON(!drm_gem_shmem_is_purgeable(shmem));

 dma_unmap_sg(obj->dev->dev, shmem->sgt->sgl,
       shmem->sgt->nents, DMA_BIDIRECTIONAL);
 sg_free_table(shmem->sgt);
 kfree(shmem->sgt);
 shmem->sgt = ((void*)0);

 drm_gem_shmem_put_pages_locked(shmem);

 shmem->madv = -1;

 drm_vma_node_unmap(&obj->vma_node, dev->anon_inode->i_mapping);
 drm_gem_free_mmap_offset(obj);






 shmem_truncate_range(file_inode(obj->filp), 0, (loff_t)-1);

 invalidate_mapping_pages(file_inode(obj->filp)->i_mapping,
   0, (loff_t)-1);
}
