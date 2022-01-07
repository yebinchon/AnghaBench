
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int name; struct drm_device* dev; } ;
struct drm_device {int object_name_idr; } ;


 int idr_remove (int *,int ) ;

__attribute__((used)) static void drm_gem_object_handle_free(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;


 if (obj->name) {
  idr_remove(&dev->object_name_idr, obj->name);
  obj->name = 0;
 }
}
