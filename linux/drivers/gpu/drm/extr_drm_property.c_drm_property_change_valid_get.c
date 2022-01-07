
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct drm_mode_object {int dummy; } ;
struct drm_property_blob {struct drm_mode_object base; } ;
struct drm_property {int flags; unsigned long long* values; int num_values; int dev; } ;
typedef scalar_t__ int64_t ;


 int DRM_MODE_PROP_BITMASK ;
 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int DRM_MODE_PROP_OBJECT ;
 int DRM_MODE_PROP_RANGE ;
 int DRM_MODE_PROP_SIGNED_RANGE ;
 scalar_t__ U642I64 (unsigned long long) ;
 struct drm_mode_object* __drm_mode_object_find (int ,int *,unsigned long long,unsigned long long) ;
 struct drm_property_blob* drm_property_lookup_blob (int ,unsigned long long) ;
 scalar_t__ drm_property_type_is (struct drm_property*,int ) ;

bool drm_property_change_valid_get(struct drm_property *property,
       uint64_t value, struct drm_mode_object **ref)
{
 int i;

 if (property->flags & DRM_MODE_PROP_IMMUTABLE)
  return 0;

 *ref = ((void*)0);

 if (drm_property_type_is(property, DRM_MODE_PROP_RANGE)) {
  if (value < property->values[0] || value > property->values[1])
   return 0;
  return 1;
 } else if (drm_property_type_is(property, DRM_MODE_PROP_SIGNED_RANGE)) {
  int64_t svalue = U642I64(value);

  if (svalue < U642I64(property->values[0]) ||
    svalue > U642I64(property->values[1]))
   return 0;
  return 1;
 } else if (drm_property_type_is(property, DRM_MODE_PROP_BITMASK)) {
  uint64_t valid_mask = 0;

  for (i = 0; i < property->num_values; i++)
   valid_mask |= (1ULL << property->values[i]);
  return !(value & ~valid_mask);
 } else if (drm_property_type_is(property, DRM_MODE_PROP_BLOB)) {
  struct drm_property_blob *blob;

  if (value == 0)
   return 1;

  blob = drm_property_lookup_blob(property->dev, value);
  if (blob) {
   *ref = &blob->base;
   return 1;
  } else {
   return 0;
  }
 } else if (drm_property_type_is(property, DRM_MODE_PROP_OBJECT)) {

  if (value == 0)
   return 1;

  *ref = __drm_mode_object_find(property->dev, ((void*)0), value,
           property->values[0]);
  return *ref != ((void*)0);
 }

 for (i = 0; i < property->num_values; i++)
  if (property->values[i] == value)
   return 1;
 return 0;
}
