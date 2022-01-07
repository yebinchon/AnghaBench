
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int gmbus_wait_queue; int uncore; } ;


 int DEFINE_WAIT (int ) ;
 int GMBUS2 ;
 int GMBUS4 ;
 int GMBUS_ACTIVE ;
 scalar_t__ GMBUS_IDLE_EN ;
 scalar_t__ HAS_GMBUS_IRQ (struct drm_i915_private*) ;
 int I915_WRITE_FW (int ,scalar_t__) ;
 int add_wait_queue (int *,int *) ;
 int intel_wait_for_register_fw (int *,int ,int ,int ,int) ;
 int remove_wait_queue (int *,int *) ;
 int wait ;

__attribute__((used)) static int
gmbus_wait_idle(struct drm_i915_private *dev_priv)
{
 DEFINE_WAIT(wait);
 u32 irq_enable;
 int ret;


 irq_enable = 0;
 if (HAS_GMBUS_IRQ(dev_priv))
  irq_enable = GMBUS_IDLE_EN;

 add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
 I915_WRITE_FW(GMBUS4, irq_enable);

 ret = intel_wait_for_register_fw(&dev_priv->uncore,
      GMBUS2, GMBUS_ACTIVE, 0,
      10);

 I915_WRITE_FW(GMBUS4, 0);
 remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);

 return ret;
}
