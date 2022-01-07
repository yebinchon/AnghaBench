
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gmbus_wait_queue; } ;


 int wake_up_all (int *) ;

__attribute__((used)) static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
{
 wake_up_all(&dev_priv->gmbus_wait_queue);
}
