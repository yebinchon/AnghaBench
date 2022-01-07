
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct drm_property {int num_values; char* name; struct drm_property* values; int head; int enum_list; int flags; int base; struct drm_device* dev; } ;
struct TYPE_2__ {int property_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_PROPERTY ;
 int DRM_PROP_NAME_LEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int drm_mode_object_add (struct drm_device*,int *,int ) ;
 int drm_property_flags_valid (int ) ;
 struct drm_property* kcalloc (int,int,int ) ;
 int kfree (struct drm_property*) ;
 struct drm_property* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

struct drm_property *drm_property_create(struct drm_device *dev,
      u32 flags, const char *name,
      int num_values)
{
 struct drm_property *property = ((void*)0);
 int ret;

 if (WARN_ON(!drm_property_flags_valid(flags)))
  return ((void*)0);

 if (WARN_ON(strlen(name) >= DRM_PROP_NAME_LEN))
  return ((void*)0);

 property = kzalloc(sizeof(struct drm_property), GFP_KERNEL);
 if (!property)
  return ((void*)0);

 property->dev = dev;

 if (num_values) {
  property->values = kcalloc(num_values, sizeof(uint64_t),
        GFP_KERNEL);
  if (!property->values)
   goto fail;
 }

 ret = drm_mode_object_add(dev, &property->base, DRM_MODE_OBJECT_PROPERTY);
 if (ret)
  goto fail;

 property->flags = flags;
 property->num_values = num_values;
 INIT_LIST_HEAD(&property->enum_list);

 strncpy(property->name, name, DRM_PROP_NAME_LEN);
 property->name[DRM_PROP_NAME_LEN-1] = '\0';

 list_add_tail(&property->head, &dev->mode_config.property_list);

 return property;
fail:
 kfree(property->values);
 kfree(property);
 return ((void*)0);
}
