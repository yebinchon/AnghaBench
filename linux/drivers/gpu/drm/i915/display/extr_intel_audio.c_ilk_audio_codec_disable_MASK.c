#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_CONFIG_LOWER_N_MASK ; 
 int /*<<< orphan*/  AUD_CONFIG_N_PROG_ENABLE ; 
 int /*<<< orphan*/  AUD_CONFIG_N_VALUE_INDEX ; 
 int /*<<< orphan*/  AUD_CONFIG_UPPER_N_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPT_AUD_CNTRL_ST2 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  IBX_AUD_CNTL_ST2 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  VLV_AUD_CNTL_ST2 ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct intel_encoder *encoder,
				    const struct intel_crtc_state *old_crtc_state,
				    const struct drm_connector_state *old_conn_state)
{
	struct drm_i915_private *dev_priv = FUNC14(encoder->base.dev);
	struct intel_crtc *crtc = FUNC15(old_crtc_state->base.crtc);
	enum pipe pipe = crtc->pipe;
	enum port port = encoder->port;
	u32 tmp, eldv;
	i915_reg_t aud_config, aud_cntrl_st2;

	FUNC1("Disable audio codec on port %c, pipe %c\n",
		      FUNC13(port), FUNC12(pipe));

	if (FUNC10(port == PORT_A))
		return;

	if (FUNC2(dev_priv)) {
		aud_config = FUNC5(pipe);
		aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
	} else if (FUNC8(dev_priv) || FUNC7(dev_priv)) {
		aud_config = FUNC9(pipe);
		aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
	} else {
		aud_config = FUNC0(pipe);
		aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
	}

	/* Disable timestamps */
	tmp = FUNC3(aud_config);
	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
	tmp |= AUD_CONFIG_N_PROG_ENABLE;
	tmp &= ~AUD_CONFIG_UPPER_N_MASK;
	tmp &= ~AUD_CONFIG_LOWER_N_MASK;
	if (FUNC11(old_crtc_state))
		tmp |= AUD_CONFIG_N_VALUE_INDEX;
	FUNC4(aud_config, tmp);

	eldv = FUNC6(port);

	/* Invalidate ELD */
	tmp = FUNC3(aud_cntrl_st2);
	tmp &= ~eldv;
	FUNC4(aud_cntrl_st2, tmp);
}