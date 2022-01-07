
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_property_blob {TYPE_1__ base; } ;
struct drm_property {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_property_blob*) ;
 int PTR_ERR (struct drm_property_blob*) ;
 int WARN_ON (int ) ;
 int drm_object_property_set_value (struct drm_mode_object*,struct drm_property*,int ) ;
 int drm_property_blob_put (struct drm_property_blob*) ;
 struct drm_property_blob* drm_property_create_blob (struct drm_device*,size_t,void const*) ;

int drm_property_replace_global_blob(struct drm_device *dev,
         struct drm_property_blob **replace,
         size_t length,
         const void *data,
         struct drm_mode_object *obj_holds_id,
         struct drm_property *prop_holds_id)
{
 struct drm_property_blob *new_blob = ((void*)0);
 struct drm_property_blob *old_blob = ((void*)0);
 int ret;

 WARN_ON(replace == ((void*)0));

 old_blob = *replace;

 if (length && data) {
  new_blob = drm_property_create_blob(dev, length, data);
  if (IS_ERR(new_blob))
   return PTR_ERR(new_blob);
 }

 if (obj_holds_id) {
  ret = drm_object_property_set_value(obj_holds_id,
          prop_holds_id,
          new_blob ?
              new_blob->base.id : 0);
  if (ret != 0)
   goto err_created;
 }

 drm_property_blob_put(old_blob);
 *replace = new_blob;

 return 0;

err_created:
 drm_property_blob_put(new_blob);
 return ret;
}
