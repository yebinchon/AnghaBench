
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {TYPE_1__* state; int base; struct drm_property* max_bpc_property; struct drm_device* dev; } ;
struct TYPE_2__ {int max_requested_bpc; int max_bpc; } ;


 int ENOMEM ;
 int drm_object_attach_property (int *,struct drm_property*,int) ;
 struct drm_property* drm_property_create_range (struct drm_device*,int ,char*,int,int) ;

int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
       int min, int max)
{
 struct drm_device *dev = connector->dev;
 struct drm_property *prop;

 prop = connector->max_bpc_property;
 if (!prop) {
  prop = drm_property_create_range(dev, 0, "max bpc", min, max);
  if (!prop)
   return -ENOMEM;

  connector->max_bpc_property = prop;
 }

 drm_object_attach_property(&connector->base, prop, max);
 connector->state->max_requested_bpc = max;
 connector->state->max_bpc = max;

 return 0;
}
