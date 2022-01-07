
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int sb_lock; } ;


 unsigned long BIT (int ) ;
 int VLV_IOSF_SB_PUNIT ;
 int __vlv_punit_put (struct drm_i915_private*) ;
 int mutex_unlock (int *) ;

void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
{
 mutex_unlock(&i915->sb_lock);

 if (ports & BIT(VLV_IOSF_SB_PUNIT))
  __vlv_punit_put(i915);
}
