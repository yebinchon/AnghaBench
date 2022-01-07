
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_object {TYPE_1__* filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int f_mapping; } ;


 int GFP_HIGHUSER ;
 int PAGE_ALIGN (int ) ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_init (struct drm_device*,struct drm_gem_object*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int etnaviv_gem_new_impl (struct drm_device*,int ,int ,int *,struct drm_gem_object**) ;
 int etnaviv_gem_obj_add (struct drm_device*,struct drm_gem_object*) ;
 int etnaviv_gem_shmem_ops ;
 int etnaviv_shm_lock_class ;
 int lockdep_set_class (int *,int *) ;
 int mapping_set_gfp_mask (int ,int) ;
 TYPE_2__* to_etnaviv_bo (struct drm_gem_object*) ;

int etnaviv_gem_new_handle(struct drm_device *dev, struct drm_file *file,
 u32 size, u32 flags, u32 *handle)
{
 struct drm_gem_object *obj = ((void*)0);
 int ret;

 size = PAGE_ALIGN(size);

 ret = etnaviv_gem_new_impl(dev, size, flags,
       &etnaviv_gem_shmem_ops, &obj);
 if (ret)
  goto fail;

 lockdep_set_class(&to_etnaviv_bo(obj)->lock, &etnaviv_shm_lock_class);

 ret = drm_gem_object_init(dev, obj, size);
 if (ret)
  goto fail;







 mapping_set_gfp_mask(obj->filp->f_mapping, GFP_HIGHUSER |
        __GFP_RETRY_MAYFAIL | __GFP_NOWARN);

 etnaviv_gem_obj_add(dev, obj);

 ret = drm_gem_handle_create(file, obj, handle);


fail:
 drm_gem_object_put_unlocked(obj);

 return ret;
}
