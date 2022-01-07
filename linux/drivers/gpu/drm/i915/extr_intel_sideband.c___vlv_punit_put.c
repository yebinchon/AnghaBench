
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int sb_qos; } ;


 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PM_QOS_DEFAULT_VALUE ;
 int iosf_mbi_punit_release () ;
 int pm_qos_update_request (int *,int ) ;

__attribute__((used)) static void __vlv_punit_put(struct drm_i915_private *i915)
{
 if (IS_VALLEYVIEW(i915))
  pm_qos_update_request(&i915->sb_qos, PM_QOS_DEFAULT_VALUE);

 iosf_mbi_punit_release();
}
