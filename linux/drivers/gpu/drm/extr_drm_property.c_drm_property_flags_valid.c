
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRM_MODE_PROP_ATOMIC ;
 int DRM_MODE_PROP_EXTENDED_TYPE ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int DRM_MODE_PROP_LEGACY_TYPE ;
 int is_power_of_2 (int) ;

__attribute__((used)) static bool drm_property_flags_valid(u32 flags)
{
 u32 legacy_type = flags & DRM_MODE_PROP_LEGACY_TYPE;
 u32 ext_type = flags & DRM_MODE_PROP_EXTENDED_TYPE;


 if (flags & ~(DRM_MODE_PROP_LEGACY_TYPE |
        DRM_MODE_PROP_EXTENDED_TYPE |
        DRM_MODE_PROP_IMMUTABLE |
        DRM_MODE_PROP_ATOMIC))
  return 0;


 if (!legacy_type == !ext_type)
  return 0;


 if (legacy_type && !is_power_of_2(legacy_type))
  return 0;

 return 1;
}
