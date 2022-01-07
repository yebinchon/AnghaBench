
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_armada_gem_create {size_t size; int handle; } ;
struct armada_gem_object {int obj; } ;


 int DRM_DEBUG_DRIVER (char*,struct armada_gem_object*,size_t,int ) ;
 int ENOMEM ;
 struct armada_gem_object* armada_gem_alloc_object (struct drm_device*,size_t) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;

int armada_gem_create_ioctl(struct drm_device *dev, void *data,
 struct drm_file *file)
{
 struct drm_armada_gem_create *args = data;
 struct armada_gem_object *dobj;
 size_t size;
 u32 handle;
 int ret;

 if (args->size == 0)
  return -ENOMEM;

 size = args->size;

 dobj = armada_gem_alloc_object(dev, size);
 if (dobj == ((void*)0))
  return -ENOMEM;

 ret = drm_gem_handle_create(file, &dobj->obj, &handle);
 if (ret)
  goto err;

 args->handle = handle;


 DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
 err:
 drm_gem_object_put_unlocked(&dobj->obj);
 return ret;
}
