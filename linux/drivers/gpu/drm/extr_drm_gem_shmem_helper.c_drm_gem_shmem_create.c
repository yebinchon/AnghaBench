
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_gem_shmem_object {int madv_list; int vmap_lock; int pages_lock; } ;
struct drm_gem_object {TYPE_2__* filp; int * funcs; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_4__ {int f_mapping; } ;
struct TYPE_3__ {struct drm_gem_object* (* gem_create_object ) (struct drm_device*,size_t) ;} ;


 int ENOMEM ;
 struct drm_gem_shmem_object* ERR_PTR (int) ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 size_t PAGE_ALIGN (size_t) ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 int drm_gem_object_init (struct drm_device*,struct drm_gem_object*,size_t) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_gem_shmem_funcs ;
 int kfree (struct drm_gem_object*) ;
 struct drm_gem_object* kzalloc (int,int ) ;
 int mapping_set_gfp_mask (int ,int) ;
 int mutex_init (int *) ;
 struct drm_gem_object* stub1 (struct drm_device*,size_t) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;

struct drm_gem_shmem_object *drm_gem_shmem_create(struct drm_device *dev, size_t size)
{
 struct drm_gem_shmem_object *shmem;
 struct drm_gem_object *obj;
 int ret;

 size = PAGE_ALIGN(size);

 if (dev->driver->gem_create_object)
  obj = dev->driver->gem_create_object(dev, size);
 else
  obj = kzalloc(sizeof(*shmem), GFP_KERNEL);
 if (!obj)
  return ERR_PTR(-ENOMEM);

 if (!obj->funcs)
  obj->funcs = &drm_gem_shmem_funcs;

 ret = drm_gem_object_init(dev, obj, size);
 if (ret)
  goto err_free;

 ret = drm_gem_create_mmap_offset(obj);
 if (ret)
  goto err_release;

 shmem = to_drm_gem_shmem_obj(obj);
 mutex_init(&shmem->pages_lock);
 mutex_init(&shmem->vmap_lock);
 INIT_LIST_HEAD(&shmem->madv_list);
 mapping_set_gfp_mask(obj->filp->f_mapping, GFP_HIGHUSER |
        __GFP_RETRY_MAYFAIL | __GFP_NOWARN);

 return shmem;

err_release:
 drm_gem_object_release(obj);
err_free:
 kfree(obj);

 return ERR_PTR(ret);
}
