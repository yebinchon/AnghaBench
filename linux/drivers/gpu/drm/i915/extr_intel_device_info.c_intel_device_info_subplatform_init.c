
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct intel_runtime_info {int* platform_mask; } ;
struct intel_device_info {int platform; } ;
struct drm_i915_private {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (unsigned int const) ;
 int GEM_BUG_ON (int) ;
 int INTEL_DEVID (struct drm_i915_private*) ;
 struct intel_device_info* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_SUBPLATFORM_BITS ;
 unsigned int const INTEL_SUBPLATFORM_PORTF ;
 unsigned int const INTEL_SUBPLATFORM_ULT ;
 unsigned int const INTEL_SUBPLATFORM_ULX ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 struct intel_runtime_info* RUNTIME_INFO (struct drm_i915_private*) ;
 unsigned int __platform_mask_bit (struct intel_runtime_info const*,int ) ;
 unsigned int __platform_mask_index (struct intel_runtime_info const*,int ) ;
 scalar_t__ find_devid (int ,int ,int ) ;
 int subplatform_portf_ids ;
 int subplatform_ult_ids ;
 int subplatform_ulx_ids ;

void intel_device_info_subplatform_init(struct drm_i915_private *i915)
{
 const struct intel_device_info *info = INTEL_INFO(i915);
 const struct intel_runtime_info *rinfo = RUNTIME_INFO(i915);
 const unsigned int pi = __platform_mask_index(rinfo, info->platform);
 const unsigned int pb = __platform_mask_bit(rinfo, info->platform);
 u16 devid = INTEL_DEVID(i915);
 u32 mask = 0;


 RUNTIME_INFO(i915)->platform_mask[pi] = BIT(pb);


 if (find_devid(devid, subplatform_ult_ids,
         ARRAY_SIZE(subplatform_ult_ids))) {
  mask = BIT(INTEL_SUBPLATFORM_ULT);
 } else if (find_devid(devid, subplatform_ulx_ids,
         ARRAY_SIZE(subplatform_ulx_ids))) {
  mask = BIT(INTEL_SUBPLATFORM_ULX);
  if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {

   mask |= BIT(INTEL_SUBPLATFORM_ULT);
  }
 } else if (find_devid(devid, subplatform_portf_ids,
         ARRAY_SIZE(subplatform_portf_ids))) {
  mask = BIT(INTEL_SUBPLATFORM_PORTF);
 }

 GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_BITS);

 RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
}
