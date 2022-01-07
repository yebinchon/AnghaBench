
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;
struct drm_device {struct meson_drm* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int VENC_INTFLAG ;
 scalar_t__ _REG (int ) ;
 int meson_crtc_irq (struct meson_drm*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static irqreturn_t meson_irq(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct meson_drm *priv = dev->dev_private;

 (void)readl_relaxed(priv->io_base + _REG(VENC_INTFLAG));

 meson_crtc_irq(priv);

 return IRQ_HANDLED;
}
