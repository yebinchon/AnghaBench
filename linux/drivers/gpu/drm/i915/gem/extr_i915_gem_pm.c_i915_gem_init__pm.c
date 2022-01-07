
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int notifier_call; } ;
struct TYPE_5__ {TYPE_3__ pm_notifier; int retire_work; int idle_work; } ;
struct TYPE_4__ {int pm_notifications; } ;
struct drm_i915_private {TYPE_2__ gem; TYPE_1__ gt; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int blocking_notifier_chain_register (int *,TYPE_3__*) ;
 int idle_work_handler ;
 int pm_notifier ;
 int retire_work_handler ;

void i915_gem_init__pm(struct drm_i915_private *i915)
{
 INIT_WORK(&i915->gem.idle_work, idle_work_handler);
 INIT_DELAYED_WORK(&i915->gem.retire_work, retire_work_handler);

 i915->gem.pm_notifier.notifier_call = pm_notifier;
 blocking_notifier_chain_register(&i915->gt.pm_notifications,
      &i915->gem.pm_notifier);
}
