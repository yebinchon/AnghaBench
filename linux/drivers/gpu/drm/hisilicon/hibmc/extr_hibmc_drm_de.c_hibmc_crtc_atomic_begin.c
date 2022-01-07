
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ HIBMC_CURRENT_GATE ;
 unsigned int HIBMC_CURR_GATE_DISPLAY (int) ;
 unsigned int HIBMC_CURR_GATE_DISPLAY_MASK ;
 unsigned int HIBMC_CURR_GATE_LOCALMEM (int) ;
 unsigned int HIBMC_CURR_GATE_LOCALMEM_MASK ;
 int HIBMC_PW_MODE_CTL_MODE_MODE0 ;
 int hibmc_set_current_gate (struct hibmc_drm_private*,unsigned int) ;
 int hibmc_set_power_mode (struct hibmc_drm_private*,int ) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void hibmc_crtc_atomic_begin(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 unsigned int reg;
 struct drm_device *dev = crtc->dev;
 struct hibmc_drm_private *priv = dev->dev_private;

 hibmc_set_power_mode(priv, HIBMC_PW_MODE_CTL_MODE_MODE0);


 reg = readl(priv->mmio + HIBMC_CURRENT_GATE);
 reg &= ~HIBMC_CURR_GATE_DISPLAY_MASK;
 reg &= ~HIBMC_CURR_GATE_LOCALMEM_MASK;
 reg |= HIBMC_CURR_GATE_DISPLAY(1);
 reg |= HIBMC_CURR_GATE_LOCALMEM(1);
 hibmc_set_current_gate(priv, reg);


}
