#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {unsigned long start; scalar_t__ end; } ;
struct drm_i915_private {TYPE_1__ dsm_reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GEN6_GFXPAUSE ; 
 int /*<<< orphan*/  GEN6_RC_CONTROL ; 
 int GEN6_RC_CTL_HW_ENABLE ; 
 int GEN6_RC_CTL_RC6_ENABLE ; 
 int /*<<< orphan*/  GEN6_RC_STATE ; 
 int /*<<< orphan*/  GEN8_MISC_CTRL0 ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_CONTROL ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_ENABLE ; 
 int /*<<< orphan*/  GEN8_PUSHBUS_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IDLE_TIME_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PWRCTX_MAXCNT_BCSUNIT ; 
 int /*<<< orphan*/  PWRCTX_MAXCNT_RCSUNIT ; 
 int /*<<< orphan*/  PWRCTX_MAXCNT_VCSUNIT0 ; 
 int /*<<< orphan*/  PWRCTX_MAXCNT_VECSUNIT ; 
 int /*<<< orphan*/  RC6_CTX_BASE ; 
 int RC6_CTX_BASE_MASK ; 
 int RC6_CTX_IN_DRAM ; 
 int /*<<< orphan*/  RC6_LOCATION ; 
 int RC_SW_TARGET_STATE_MASK ; 
 int RC_SW_TARGET_STATE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv)
{
	bool enable_rc6 = true;
	unsigned long rc6_ctx_base;
	u32 rc_ctl;
	int rc_sw_target;

	rc_ctl = FUNC1(GEN6_RC_CONTROL);
	rc_sw_target = (FUNC1(GEN6_RC_STATE) & RC_SW_TARGET_STATE_MASK) >>
		       RC_SW_TARGET_STATE_SHIFT;
	FUNC0("BIOS enabled RC states: "
			 "HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\n",
			 FUNC2(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
			 FUNC2(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
			 rc_sw_target);

	if (!(FUNC1(RC6_LOCATION) & RC6_CTX_IN_DRAM)) {
		FUNC0("RC6 Base location not set properly.\n");
		enable_rc6 = false;
	}

	/*
	 * The exact context size is not known for BXT, so assume a page size
	 * for this check.
	 */
	rc6_ctx_base = FUNC1(RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
	if (!((rc6_ctx_base >= dev_priv->dsm_reserved.start) &&
	      (rc6_ctx_base + PAGE_SIZE < dev_priv->dsm_reserved.end))) {
		FUNC0("RC6 Base address not as expected.\n");
		enable_rc6 = false;
	}

	if (!(((FUNC1(PWRCTX_MAXCNT_RCSUNIT) & IDLE_TIME_MASK) > 1) &&
	      ((FUNC1(PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1) &&
	      ((FUNC1(PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1) &&
	      ((FUNC1(PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1))) {
		FUNC0("Engine Idle wait time not set properly.\n");
		enable_rc6 = false;
	}

	if (!FUNC1(GEN8_PUSHBUS_CONTROL) ||
	    !FUNC1(GEN8_PUSHBUS_ENABLE) ||
	    !FUNC1(GEN8_PUSHBUS_SHIFT)) {
		FUNC0("Pushbus not setup properly.\n");
		enable_rc6 = false;
	}

	if (!FUNC1(GEN6_GFXPAUSE)) {
		FUNC0("GFX pause not setup properly.\n");
		enable_rc6 = false;
	}

	if (!FUNC1(GEN8_MISC_CTRL0)) {
		FUNC0("GPM control not setup properly.\n");
		enable_rc6 = false;
	}

	return enable_rc6;
}