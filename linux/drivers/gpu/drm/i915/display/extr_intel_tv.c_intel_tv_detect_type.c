
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_tv {int dummy; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int irq_lock; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int polled; struct drm_device* dev; TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;


 int DAC_A_0_7_V ;
 int DAC_A_MASK ;
 int DAC_B_0_7_V ;
 int DAC_B_MASK ;
 int DAC_CTL_OVERRIDE ;
 int DAC_C_0_7_V ;
 int DAC_C_MASK ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_MODE_CONNECTOR_Component ;
 int DRM_MODE_CONNECTOR_Composite ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GM45 (struct drm_i915_private*) ;
 int PIPE_HOTPLUG_INTERRUPT_STATUS ;
 int PIPE_HOTPLUG_TV_INTERRUPT_STATUS ;
 int POSTING_READ (int ) ;
 int TVDAC_A_SENSE ;
 int TVDAC_A_SENSE_CTL ;
 int TVDAC_B_SENSE ;
 int TVDAC_B_SENSE_CTL ;
 int TVDAC_C_SENSE ;
 int TVDAC_C_SENSE_CTL ;
 int TVDAC_SENSE_MASK ;
 int TVDAC_STATE_CHG_EN ;
 int TV_CTL ;
 int TV_DAC ;
 int TV_ENC_ENABLE ;
 int TV_ENC_PIPE_SEL (int ) ;
 int TV_ENC_PIPE_SEL_MASK ;
 int TV_TEST_MODE_MASK ;
 int TV_TEST_MODE_MONITOR_DETECT ;
 int i915_disable_pipestat (struct drm_i915_private*,int ,int) ;
 int i915_enable_pipestat (struct drm_i915_private*,int ,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static int
intel_tv_detect_type(struct intel_tv *intel_tv,
        struct drm_connector *connector)
{
 struct drm_crtc *crtc = connector->state->crtc;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 tv_ctl, save_tv_ctl;
 u32 tv_dac, save_tv_dac;
 int type;


 if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
  spin_lock_irq(&dev_priv->irq_lock);
  i915_disable_pipestat(dev_priv, 0,
          PIPE_HOTPLUG_INTERRUPT_STATUS |
          PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
  spin_unlock_irq(&dev_priv->irq_lock);
 }

 save_tv_dac = tv_dac = I915_READ(TV_DAC);
 save_tv_ctl = tv_ctl = I915_READ(TV_CTL);


 tv_ctl &= ~(TV_ENC_ENABLE | TV_ENC_PIPE_SEL_MASK | TV_TEST_MODE_MASK);
 tv_ctl |= TV_TEST_MODE_MONITOR_DETECT;
 tv_ctl |= TV_ENC_PIPE_SEL(intel_crtc->pipe);

 tv_dac &= ~(TVDAC_SENSE_MASK | DAC_A_MASK | DAC_B_MASK | DAC_C_MASK);
 tv_dac |= (TVDAC_STATE_CHG_EN |
     TVDAC_A_SENSE_CTL |
     TVDAC_B_SENSE_CTL |
     TVDAC_C_SENSE_CTL |
     DAC_CTL_OVERRIDE |
     DAC_A_0_7_V |
     DAC_B_0_7_V |
     DAC_C_0_7_V);






 if (IS_GM45(dev_priv))
  tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
       TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);

 I915_WRITE(TV_CTL, tv_ctl);
 I915_WRITE(TV_DAC, tv_dac);
 POSTING_READ(TV_DAC);

 intel_wait_for_vblank(dev_priv, intel_crtc->pipe);

 type = -1;
 tv_dac = I915_READ(TV_DAC);
 DRM_DEBUG_KMS("TV detected: %x, %x\n", tv_ctl, tv_dac);






 if ((tv_dac & TVDAC_SENSE_MASK) == (TVDAC_B_SENSE | TVDAC_C_SENSE)) {
  DRM_DEBUG_KMS("Detected Composite TV connection\n");
  type = DRM_MODE_CONNECTOR_Composite;
 } else if ((tv_dac & (TVDAC_A_SENSE|TVDAC_B_SENSE)) == TVDAC_A_SENSE) {
  DRM_DEBUG_KMS("Detected S-Video TV connection\n");
  type = DRM_MODE_CONNECTOR_SVIDEO;
 } else if ((tv_dac & TVDAC_SENSE_MASK) == 0) {
  DRM_DEBUG_KMS("Detected Component TV connection\n");
  type = DRM_MODE_CONNECTOR_Component;
 } else {
  DRM_DEBUG_KMS("Unrecognised TV connection\n");
  type = -1;
 }

 I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
 I915_WRITE(TV_CTL, save_tv_ctl);
 POSTING_READ(TV_CTL);


 intel_wait_for_vblank(dev_priv, intel_crtc->pipe);


 if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
  spin_lock_irq(&dev_priv->irq_lock);
  i915_enable_pipestat(dev_priv, 0,
         PIPE_HOTPLUG_INTERRUPT_STATUS |
         PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
  spin_unlock_irq(&dev_priv->irq_lock);
 }

 return type;
}
