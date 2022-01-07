
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;

__attribute__((used)) static void icl_exec_gpio(struct drm_i915_private *dev_priv,
     u8 gpio_source, u8 gpio_index, bool value)
{
 DRM_DEBUG_KMS("Skipping ICL GPIO element execution\n");
}
