
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int vrr_capable_property; int base; } ;


 int drm_object_property_set_value (int *,int ,int) ;

void drm_connector_set_vrr_capable_property(
  struct drm_connector *connector, bool capable)
{
 drm_object_property_set_value(&connector->base,
          connector->vrr_capable_property,
          capable);
}
