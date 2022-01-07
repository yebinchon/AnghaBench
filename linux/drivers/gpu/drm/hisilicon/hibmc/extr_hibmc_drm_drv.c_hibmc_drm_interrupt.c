
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int irqreturn_t ;


 scalar_t__ HIBMC_RAW_INTERRUPT ;
 int HIBMC_RAW_INTERRUPT_VBLANK (int) ;
 int IRQ_HANDLED ;
 int drm_handle_vblank (struct drm_device*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t hibmc_drm_interrupt(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 struct hibmc_drm_private *priv =
  (struct hibmc_drm_private *)dev->dev_private;
 u32 status;

 status = readl(priv->mmio + HIBMC_RAW_INTERRUPT);

 if (status & HIBMC_RAW_INTERRUPT_VBLANK(1)) {
  writel(HIBMC_RAW_INTERRUPT_VBLANK(1),
         priv->mmio + HIBMC_RAW_INTERRUPT);
  drm_handle_vblank(dev, 0);
 }

 return IRQ_HANDLED;
}
