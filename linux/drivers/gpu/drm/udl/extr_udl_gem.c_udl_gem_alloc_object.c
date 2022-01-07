
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_gem_object {int flags; int base; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int UDL_BO_CACHEABLE ;
 scalar_t__ drm_gem_object_init (struct drm_device*,int *,size_t) ;
 int kfree (struct udl_gem_object*) ;
 struct udl_gem_object* kzalloc (int,int ) ;

struct udl_gem_object *udl_gem_alloc_object(struct drm_device *dev,
         size_t size)
{
 struct udl_gem_object *obj;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (obj == ((void*)0))
  return ((void*)0);

 if (drm_gem_object_init(dev, &obj->base, size) != 0) {
  kfree(obj);
  return ((void*)0);
 }

 obj->flags = UDL_BO_CACHEABLE;
 return obj;
}
