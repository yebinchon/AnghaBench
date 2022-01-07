
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int sb_lock; } ;


 unsigned long BIT (int ) ;
 int VLV_IOSF_SB_PUNIT ;
 int __vlv_punit_get (struct drm_i915_private*) ;
 int mutex_lock (int *) ;

void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
{
 if (ports & BIT(VLV_IOSF_SB_PUNIT))
  __vlv_punit_get(i915);

 mutex_lock(&i915->sb_lock);
}
