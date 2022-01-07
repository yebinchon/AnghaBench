
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct drm_plane {TYPE_1__* state; struct drm_property* alpha_property; int base; int dev; } ;
struct TYPE_2__ {int alpha; } ;


 int DRM_BLEND_ALPHA_OPAQUE ;
 int ENOMEM ;
 int drm_object_attach_property (int *,struct drm_property*,int ) ;
 struct drm_property* drm_property_create_range (int ,int ,char*,int ,int ) ;

int drm_plane_create_alpha_property(struct drm_plane *plane)
{
 struct drm_property *prop;

 prop = drm_property_create_range(plane->dev, 0, "alpha",
      0, DRM_BLEND_ALPHA_OPAQUE);
 if (!prop)
  return -ENOMEM;

 drm_object_attach_property(&plane->base, prop, DRM_BLEND_ALPHA_OPAQUE);
 plane->alpha_property = prop;

 if (plane->state)
  plane->state->alpha = DRM_BLEND_ALPHA_OPAQUE;

 return 0;
}
