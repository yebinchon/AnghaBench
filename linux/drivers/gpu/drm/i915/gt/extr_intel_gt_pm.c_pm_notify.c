
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_notifications; } ;
struct drm_i915_private {TYPE_1__ gt; } ;


 int blocking_notifier_call_chain (int *,int,struct drm_i915_private*) ;

__attribute__((used)) static void pm_notify(struct drm_i915_private *i915, int state)
{
 blocking_notifier_call_chain(&i915->gt.pm_notifications, state, i915);
}
