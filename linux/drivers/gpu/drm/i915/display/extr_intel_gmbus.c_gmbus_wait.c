
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int gmbus_wait_queue; } ;


 int DEFINE_WAIT (int ) ;
 int ENXIO ;
 int GMBUS2 ;
 int GMBUS4 ;
 int GMBUS_SATOER ;
 int HAS_GMBUS_IRQ (struct drm_i915_private*) ;
 int I915_READ_FW (int ) ;
 int I915_WRITE_FW (int ,int) ;
 int add_wait_queue (int *,int *) ;
 int remove_wait_queue (int *,int *) ;
 int wait ;
 int wait_for (int,int) ;
 int wait_for_us (int,int) ;

__attribute__((used)) static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
{
 DEFINE_WAIT(wait);
 u32 gmbus2;
 int ret;





 if (!HAS_GMBUS_IRQ(dev_priv))
  irq_en = 0;

 add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
 I915_WRITE_FW(GMBUS4, irq_en);

 status |= GMBUS_SATOER;
 ret = wait_for_us((gmbus2 = I915_READ_FW(GMBUS2)) & status, 2);
 if (ret)
  ret = wait_for((gmbus2 = I915_READ_FW(GMBUS2)) & status, 50);

 I915_WRITE_FW(GMBUS4, 0);
 remove_wait_queue(&dev_priv->gmbus_wait_queue, &wait);

 if (gmbus2 & GMBUS_SATOER)
  return -ENXIO;

 return ret;
}
