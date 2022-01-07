
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int DRM_DEBUG_KMS (char*,int) ;
 scalar_t__ HAS_PCH_CNP (struct drm_i915_private*) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ PCH_ICP ;
 int* cnp_ddc_pin_map ;
 int* icp_ddc_pin_map ;

__attribute__((used)) static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
{
 const u8 *ddc_pin_map;
 int n_entries;

 if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
  ddc_pin_map = icp_ddc_pin_map;
  n_entries = ARRAY_SIZE(icp_ddc_pin_map);
 } else if (HAS_PCH_CNP(dev_priv)) {
  ddc_pin_map = cnp_ddc_pin_map;
  n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
 } else {

  return vbt_pin;
 }

 if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
  return ddc_pin_map[vbt_pin];

 DRM_DEBUG_KMS("Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
        vbt_pin);
 return 0;
}
