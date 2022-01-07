
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct armada_gem_object {int obj; } ;


 int DRM_DEBUG_DRIVER (char*,struct armada_gem_object*,size_t) ;
 int GFP_KERNEL ;
 int drm_gem_private_object_init (struct drm_device*,int *,size_t) ;
 struct armada_gem_object* kzalloc (int,int ) ;
 size_t roundup_gem_size (size_t) ;

struct armada_gem_object *
armada_gem_alloc_private_object(struct drm_device *dev, size_t size)
{
 struct armada_gem_object *obj;

 size = roundup_gem_size(size);

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ((void*)0);

 drm_gem_private_object_init(dev, &obj->obj, size);

 DRM_DEBUG_DRIVER("alloc private obj %p size %zu\n", obj, size);

 return obj;
}
