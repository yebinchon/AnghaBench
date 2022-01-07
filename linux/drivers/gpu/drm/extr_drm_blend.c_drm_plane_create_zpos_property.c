
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct drm_plane {TYPE_1__* state; struct drm_property* zpos_property; int base; int dev; } ;
struct TYPE_2__ {unsigned int zpos; unsigned int normalized_zpos; } ;


 int ENOMEM ;
 int drm_object_attach_property (int *,struct drm_property*,unsigned int) ;
 struct drm_property* drm_property_create_range (int ,int ,char*,unsigned int,unsigned int) ;

int drm_plane_create_zpos_property(struct drm_plane *plane,
       unsigned int zpos,
       unsigned int min, unsigned int max)
{
 struct drm_property *prop;

 prop = drm_property_create_range(plane->dev, 0, "zpos", min, max);
 if (!prop)
  return -ENOMEM;

 drm_object_attach_property(&plane->base, prop, zpos);

 plane->zpos_property = prop;

 if (plane->state) {
  plane->state->zpos = zpos;
  plane->state->normalized_zpos = zpos;
 }

 return 0;
}
