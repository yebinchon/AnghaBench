
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int crtc; } ;
struct mcde {scalar_t__ flow_active; scalar_t__ regs; int dev; TYPE_1__ pipe; int flow_lock; scalar_t__ oneshot_mode; int mdsi; } ;


 scalar_t__ MCDE_CRA0 ;
 int MCDE_CRX0_FLOEN ;
 scalar_t__ MCDE_MISCHNL ;
 scalar_t__ MCDE_MISOVL ;
 scalar_t__ MCDE_MISPP ;
 int MCDE_PP_VCMPA ;
 int MCDE_PP_VCMPB ;
 int MCDE_PP_VCMPC0 ;
 int MCDE_PP_VCMPC1 ;
 int MCDE_PP_VSCC0 ;
 int MCDE_PP_VSCC1 ;
 scalar_t__ MCDE_RISCHNL ;
 scalar_t__ MCDE_RISOVL ;
 scalar_t__ MCDE_RISPP ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*,int) ;
 int drm_crtc_handle_vblank (int *) ;
 scalar_t__ mcde_dsi_irq (int ) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

void mcde_display_irq(struct mcde *mcde)
{
 u32 mispp, misovl, mischnl;
 bool vblank = 0;


 mispp = readl(mcde->regs + MCDE_MISPP);
 misovl = readl(mcde->regs + MCDE_MISOVL);
 mischnl = readl(mcde->regs + MCDE_MISCHNL);
 if (mcde_dsi_irq(mcde->mdsi)) {
  u32 val;







  if (mcde->oneshot_mode) {
   spin_lock(&mcde->flow_lock);
   if (--mcde->flow_active == 0) {
    dev_dbg(mcde->dev, "TE0 IRQ\n");

    val = readl(mcde->regs + MCDE_CRA0);
    val &= ~MCDE_CRX0_FLOEN;
    writel(val, mcde->regs + MCDE_CRA0);
   }
   spin_unlock(&mcde->flow_lock);
  }
 }


 if (mispp & MCDE_PP_VCMPA) {
  dev_dbg(mcde->dev, "chnl A vblank IRQ\n");
  vblank = 1;
 }
 if (mispp & MCDE_PP_VCMPB) {
  dev_dbg(mcde->dev, "chnl B vblank IRQ\n");
  vblank = 1;
 }
 if (mispp & MCDE_PP_VCMPC0)
  dev_dbg(mcde->dev, "chnl C0 vblank IRQ\n");
 if (mispp & MCDE_PP_VCMPC1)
  dev_dbg(mcde->dev, "chnl C1 vblank IRQ\n");
 if (mispp & MCDE_PP_VSCC0)
  dev_dbg(mcde->dev, "chnl C0 TE IRQ\n");
 if (mispp & MCDE_PP_VSCC1)
  dev_dbg(mcde->dev, "chnl C1 TE IRQ\n");
 writel(mispp, mcde->regs + MCDE_RISPP);

 if (vblank)
  drm_crtc_handle_vblank(&mcde->pipe.crtc);

 if (misovl)
  dev_info(mcde->dev, "some stray overlay IRQ %08x\n", misovl);
 writel(misovl, mcde->regs + MCDE_RISOVL);

 if (mischnl)
  dev_info(mcde->dev, "some stray channel error IRQ %08x\n",
    mischnl);
 writel(mischnl, mcde->regs + MCDE_RISCHNL);
}
