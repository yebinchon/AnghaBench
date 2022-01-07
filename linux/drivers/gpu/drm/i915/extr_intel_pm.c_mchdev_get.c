
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int i915_mch_dev ;
 int kref_get_unless_zero (int *) ;
 struct drm_i915_private* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct drm_i915_private *mchdev_get(void)
{
 struct drm_i915_private *i915;

 rcu_read_lock();
 i915 = rcu_dereference(i915_mch_dev);
 if (!kref_get_unless_zero(&i915->drm.ref))
  i915 = ((void*)0);
 rcu_read_unlock();

 return i915;
}
