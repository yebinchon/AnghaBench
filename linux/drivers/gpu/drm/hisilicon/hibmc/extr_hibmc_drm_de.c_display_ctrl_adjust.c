
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_display_mode {unsigned long hdisplay; unsigned long vdisplay; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;


 scalar_t__ CRT_PLL2_HS ;
 int HIBMC_CRTSELECT_CRT ;
 scalar_t__ HIBMC_CRT_AUTO_CENTERING_BR ;
 int HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM ;
 int HIBMC_CRT_AUTO_CENTERING_BR_RIGHT ;
 scalar_t__ HIBMC_CRT_AUTO_CENTERING_TL ;
 int HIBMC_CRT_AUTO_CENTERING_TL_LEFT ;
 int HIBMC_CRT_AUTO_CENTERING_TL_TOP ;
 scalar_t__ HIBMC_CRT_DISP_CTL ;
 unsigned int HIBMC_CRT_DISP_CTL_CLOCK_PHASE (int ) ;
 unsigned int HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK ;
 unsigned int HIBMC_CRT_DISP_CTL_CRTSELECT (int ) ;
 unsigned int HIBMC_CRT_DISP_CTL_CRTSELECT_MASK ;
 unsigned int HIBMC_FIELD (int ,unsigned long) ;
 int get_pll_config (unsigned long,unsigned long,unsigned int*,unsigned int*) ;
 int set_vclock_hisilicon (struct drm_device*,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int display_ctrl_adjust(struct drm_device *dev,
     struct drm_display_mode *mode,
     unsigned int ctrl)
{
 unsigned long x, y;
 u32 pll1;
 u32 pll2;
 struct hibmc_drm_private *priv = dev->dev_private;

 x = mode->hdisplay;
 y = mode->vdisplay;

 get_pll_config(x, y, &pll1, &pll2);
 writel(pll2, priv->mmio + CRT_PLL2_HS);
 set_vclock_hisilicon(dev, pll1);







 writel(HIBMC_FIELD(HIBMC_CRT_AUTO_CENTERING_TL_TOP, 0) |
        HIBMC_FIELD(HIBMC_CRT_AUTO_CENTERING_TL_LEFT, 0),
        priv->mmio + HIBMC_CRT_AUTO_CENTERING_TL);

 writel(HIBMC_FIELD(HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM, y - 1) |
        HIBMC_FIELD(HIBMC_CRT_AUTO_CENTERING_BR_RIGHT, x - 1),
        priv->mmio + HIBMC_CRT_AUTO_CENTERING_BR);
 ctrl &= ~HIBMC_CRT_DISP_CTL_CRTSELECT_MASK;
 ctrl &= ~HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK;

 ctrl |= HIBMC_CRT_DISP_CTL_CRTSELECT(HIBMC_CRTSELECT_CRT);


 ctrl |= HIBMC_CRT_DISP_CTL_CLOCK_PHASE(0);

 writel(ctrl, priv->mmio + HIBMC_CRT_DISP_CTL);

 return ctrl;
}
