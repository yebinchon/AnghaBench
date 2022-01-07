
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gem_object {int lock; int madv; } ;
struct drm_gem_object {int import_attach; int filp; int vma_node; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* anon_inode; int struct_mutex; } ;
typedef int loff_t ;
typedef enum msm_gem_lock { ____Placeholder_msm_gem_lock } msm_gem_lock ;
struct TYPE_5__ {int i_mapping; } ;
struct TYPE_4__ {int i_mapping; } ;


 int WARN_ON (int) ;
 int __MSM_MADV_PURGED ;
 int drm_gem_free_mmap_offset (struct drm_gem_object*) ;
 int drm_vma_node_unmap (int *,int ) ;
 TYPE_2__* file_inode (int ) ;
 int invalidate_mapping_pages (int ,int ,int ) ;
 int is_purgeable (struct msm_gem_object*) ;
 int msm_gem_vunmap_locked (struct drm_gem_object*) ;
 int mutex_is_locked (int *) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 int put_iova (struct drm_gem_object*) ;
 int put_pages (struct drm_gem_object*) ;
 int shmem_truncate_range (TYPE_2__*,int ,int ) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

void msm_gem_purge(struct drm_gem_object *obj, enum msm_gem_lock subclass)
{
 struct drm_device *dev = obj->dev;
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));
 WARN_ON(!is_purgeable(msm_obj));
 WARN_ON(obj->import_attach);

 mutex_lock_nested(&msm_obj->lock, subclass);

 put_iova(obj);

 msm_gem_vunmap_locked(obj);

 put_pages(obj);

 msm_obj->madv = __MSM_MADV_PURGED;

 drm_vma_node_unmap(&obj->vma_node, dev->anon_inode->i_mapping);
 drm_gem_free_mmap_offset(obj);






 shmem_truncate_range(file_inode(obj->filp), 0, (loff_t)-1);

 invalidate_mapping_pages(file_inode(obj->filp)->i_mapping,
   0, (loff_t)-1);

 mutex_unlock(&msm_obj->lock);
}
