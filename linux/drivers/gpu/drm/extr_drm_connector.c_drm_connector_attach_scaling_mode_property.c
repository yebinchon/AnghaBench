
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int const u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_property* scaling_mode_property; int base; struct drm_device* dev; } ;
struct TYPE_3__ {int name; int type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int const BIT (int) ;
 int DRM_MODE_PROP_ENUM ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int drm_object_attach_property (int *,struct drm_property*,int ) ;
 int drm_property_add_enum (struct drm_property*,int ,int ) ;
 struct drm_property* drm_property_create (struct drm_device*,int ,char*,int) ;
 int drm_property_destroy (struct drm_device*,struct drm_property*) ;
 TYPE_1__* drm_scaling_mode_enum_list ;
 int hweight32 (unsigned int const) ;

int drm_connector_attach_scaling_mode_property(struct drm_connector *connector,
            u32 scaling_mode_mask)
{
 struct drm_device *dev = connector->dev;
 struct drm_property *scaling_mode_property;
 int i;
 const unsigned valid_scaling_mode_mask =
  (1U << ARRAY_SIZE(drm_scaling_mode_enum_list)) - 1;

 if (WARN_ON(hweight32(scaling_mode_mask) < 2 ||
      scaling_mode_mask & ~valid_scaling_mode_mask))
  return -EINVAL;

 scaling_mode_property =
  drm_property_create(dev, DRM_MODE_PROP_ENUM, "scaling mode",
        hweight32(scaling_mode_mask));

 if (!scaling_mode_property)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(drm_scaling_mode_enum_list); i++) {
  int ret;

  if (!(BIT(i) & scaling_mode_mask))
   continue;

  ret = drm_property_add_enum(scaling_mode_property,
         drm_scaling_mode_enum_list[i].type,
         drm_scaling_mode_enum_list[i].name);

  if (ret) {
   drm_property_destroy(dev, scaling_mode_property);

   return ret;
  }
 }

 drm_object_attach_property(&connector->base,
       scaling_mode_property, 0);

 connector->scaling_mode_property = scaling_mode_property;

 return 0;
}
