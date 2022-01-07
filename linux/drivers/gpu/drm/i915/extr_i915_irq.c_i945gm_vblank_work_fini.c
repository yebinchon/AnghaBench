
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_qos; int work; } ;
struct drm_i915_private {TYPE_1__ i945gm_vblank; } ;


 int cancel_work_sync (int *) ;
 int pm_qos_remove_request (int *) ;

__attribute__((used)) static void i945gm_vblank_work_fini(struct drm_i915_private *dev_priv)
{
 cancel_work_sync(&dev_priv->i945gm_vblank.work);
 pm_qos_remove_request(&dev_priv->i945gm_vblank.pm_qos);
}
