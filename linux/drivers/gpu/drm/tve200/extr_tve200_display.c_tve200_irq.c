
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct tve200_drm_dev_private {scalar_t__ regs; TYPE_2__* drm; TYPE_1__ pipe; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TVE200_CTRL ;
 scalar_t__ TVE200_INT_CLR ;
 scalar_t__ TVE200_INT_STAT ;
 int TVE200_INT_V_STATUS ;
 int TVE200_VSTSTYPE_BITS ;
 int TVE200_VSTSTYPE_VAI ;
 int dev_err (int ,char*,int) ;
 int drm_crtc_handle_vblank (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

irqreturn_t tve200_irq(int irq, void *data)
{
 struct tve200_drm_dev_private *priv = data;
 u32 stat;
 u32 val;

 stat = readl(priv->regs + TVE200_INT_STAT);

 if (!stat)
  return IRQ_NONE;
 if (stat & TVE200_INT_V_STATUS) {
  val = readl(priv->regs + TVE200_CTRL);

  if (!(val & TVE200_VSTSTYPE_BITS)) {
   drm_crtc_handle_vblank(&priv->pipe.crtc);

   val |= TVE200_VSTSTYPE_VAI;
  } else {

   val &= ~TVE200_VSTSTYPE_BITS;
  }
  writel(val, priv->regs + TVE200_CTRL);
 } else
  dev_err(priv->drm->dev, "stray IRQ %08x\n", stat);


 writel(stat, priv->regs + TVE200_INT_CLR);

 return IRQ_HANDLED;
}
