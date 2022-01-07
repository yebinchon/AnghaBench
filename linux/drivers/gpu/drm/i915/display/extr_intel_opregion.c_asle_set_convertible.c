
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ASLC_CONVERTIBLE_FAILED ;
 int ASLE_IUER_CONVERTIBLE ;
 int DRM_DEBUG_DRIVER (char*) ;

__attribute__((used)) static u32 asle_set_convertible(struct drm_i915_private *dev_priv, u32 iuer)
{
 if (iuer & ASLE_IUER_CONVERTIBLE)
  DRM_DEBUG_DRIVER("Convertible is not supported (clamshell)\n");
 else
  DRM_DEBUG_DRIVER("Convertible is not supported (slate)\n");

 return ASLC_CONVERTIBLE_FAILED;
}
