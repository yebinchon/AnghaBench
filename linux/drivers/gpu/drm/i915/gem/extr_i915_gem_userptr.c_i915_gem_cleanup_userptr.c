
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int userptr_wq; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int destroy_workqueue (int ) ;

void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv)
{
 destroy_workqueue(dev_priv->mm.userptr_wq);
}
