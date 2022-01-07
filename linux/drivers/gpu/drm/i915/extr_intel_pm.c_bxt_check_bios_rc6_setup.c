
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long start; scalar_t__ end; } ;
struct drm_i915_private {TYPE_1__ dsm_reserved; } ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int GEN6_GFXPAUSE ;
 int GEN6_RC_CONTROL ;
 int GEN6_RC_CTL_HW_ENABLE ;
 int GEN6_RC_CTL_RC6_ENABLE ;
 int GEN6_RC_STATE ;
 int GEN8_MISC_CTRL0 ;
 int GEN8_PUSHBUS_CONTROL ;
 int GEN8_PUSHBUS_ENABLE ;
 int GEN8_PUSHBUS_SHIFT ;
 int I915_READ (int ) ;
 int IDLE_TIME_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PWRCTX_MAXCNT_BCSUNIT ;
 int PWRCTX_MAXCNT_RCSUNIT ;
 int PWRCTX_MAXCNT_VCSUNIT0 ;
 int PWRCTX_MAXCNT_VECSUNIT ;
 int RC6_CTX_BASE ;
 int RC6_CTX_BASE_MASK ;
 int RC6_CTX_IN_DRAM ;
 int RC6_LOCATION ;
 int RC_SW_TARGET_STATE_MASK ;
 int RC_SW_TARGET_STATE_SHIFT ;
 int onoff (int) ;

__attribute__((used)) static bool bxt_check_bios_rc6_setup(struct drm_i915_private *dev_priv)
{
 bool enable_rc6 = 1;
 unsigned long rc6_ctx_base;
 u32 rc_ctl;
 int rc_sw_target;

 rc_ctl = I915_READ(GEN6_RC_CONTROL);
 rc_sw_target = (I915_READ(GEN6_RC_STATE) & RC_SW_TARGET_STATE_MASK) >>
         RC_SW_TARGET_STATE_SHIFT;
 DRM_DEBUG_DRIVER("BIOS enabled RC states: "
    "HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\n",
    onoff(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
    onoff(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
    rc_sw_target);

 if (!(I915_READ(RC6_LOCATION) & RC6_CTX_IN_DRAM)) {
  DRM_DEBUG_DRIVER("RC6 Base location not set properly.\n");
  enable_rc6 = 0;
 }





 rc6_ctx_base = I915_READ(RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
 if (!((rc6_ctx_base >= dev_priv->dsm_reserved.start) &&
       (rc6_ctx_base + PAGE_SIZE < dev_priv->dsm_reserved.end))) {
  DRM_DEBUG_DRIVER("RC6 Base address not as expected.\n");
  enable_rc6 = 0;
 }

 if (!(((I915_READ(PWRCTX_MAXCNT_RCSUNIT) & IDLE_TIME_MASK) > 1) &&
       ((I915_READ(PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1) &&
       ((I915_READ(PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1) &&
       ((I915_READ(PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1))) {
  DRM_DEBUG_DRIVER("Engine Idle wait time not set properly.\n");
  enable_rc6 = 0;
 }

 if (!I915_READ(GEN8_PUSHBUS_CONTROL) ||
     !I915_READ(GEN8_PUSHBUS_ENABLE) ||
     !I915_READ(GEN8_PUSHBUS_SHIFT)) {
  DRM_DEBUG_DRIVER("Pushbus not setup properly.\n");
  enable_rc6 = 0;
 }

 if (!I915_READ(GEN6_GFXPAUSE)) {
  DRM_DEBUG_DRIVER("GFX pause not setup properly.\n");
  enable_rc6 = 0;
 }

 if (!I915_READ(GEN8_MISC_CTRL0)) {
  DRM_DEBUG_DRIVER("GPM control not setup properly.\n");
  enable_rc6 = 0;
 }

 return enable_rc6;
}
