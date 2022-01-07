
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {struct aspeed_gfx* dev_private; } ;
struct TYPE_2__ {int crtc; } ;
struct aspeed_gfx {scalar_t__ base; TYPE_1__ pipe; } ;
typedef int irqreturn_t ;


 scalar_t__ CRT_CTRL1 ;
 int CRT_CTRL_VERTICAL_INTR_STS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int drm_crtc_handle_vblank (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t aspeed_gfx_irq_handler(int irq, void *data)
{
 struct drm_device *drm = data;
 struct aspeed_gfx *priv = drm->dev_private;
 u32 reg;

 reg = readl(priv->base + CRT_CTRL1);

 if (reg & CRT_CTRL_VERTICAL_INTR_STS) {
  drm_crtc_handle_vblank(&priv->pipe.crtc);
  writel(reg, priv->base + CRT_CTRL1);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
