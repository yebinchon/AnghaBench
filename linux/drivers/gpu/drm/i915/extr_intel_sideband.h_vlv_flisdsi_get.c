
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int BIT (int ) ;
 int VLV_IOSF_SB_FLISDSI ;
 int vlv_iosf_sb_get (struct drm_i915_private*,int ) ;

__attribute__((used)) static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
{
 vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
}
