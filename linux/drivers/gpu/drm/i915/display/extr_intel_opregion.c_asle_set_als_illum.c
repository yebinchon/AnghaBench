
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ASLC_ALS_ILLUM_FAILED ;
 int DRM_DEBUG_DRIVER (char*) ;

__attribute__((used)) static u32 asle_set_als_illum(struct drm_i915_private *dev_priv, u32 alsi)
{


 DRM_DEBUG_DRIVER("Illum is not supported\n");
 return ASLC_ALS_ILLUM_FAILED;
}
