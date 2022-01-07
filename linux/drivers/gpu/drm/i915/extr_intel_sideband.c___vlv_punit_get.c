
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int sb_qos; } ;


 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int iosf_mbi_punit_acquire () ;
 int on_each_cpu (int ,int *,int) ;
 int ping ;
 int pm_qos_update_request (int *,int ) ;

__attribute__((used)) static void __vlv_punit_get(struct drm_i915_private *i915)
{
 iosf_mbi_punit_acquire();
 if (IS_VALLEYVIEW(i915)) {
  pm_qos_update_request(&i915->sb_qos, 0);
  on_each_cpu(ping, ((void*)0), 1);
 }
}
