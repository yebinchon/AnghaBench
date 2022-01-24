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
struct intel_sdvo {int /*<<< orphan*/  attached_output; int /*<<< orphan*/  sdvo_reg; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ has_audio; TYPE_2__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDVO_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int FUNC4 (struct intel_sdvo*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC9 (struct drm_device*) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_sdvo* FUNC11 (struct intel_encoder*) ; 

__attribute__((used)) static void FUNC12(struct intel_encoder *encoder,
			      const struct intel_crtc_state *pipe_config,
			      const struct drm_connector_state *conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC9(dev);
	struct intel_sdvo *intel_sdvo = FUNC11(encoder);
	struct intel_crtc *intel_crtc = FUNC10(pipe_config->base.crtc);
	u32 temp;
	bool input1, input2;
	int i;
	bool success;

	temp = FUNC1(intel_sdvo->sdvo_reg);
	temp |= SDVO_ENABLE;
	FUNC7(intel_sdvo, temp);

	for (i = 0; i < 2; i++)
		FUNC8(dev_priv, intel_crtc->pipe);

	success = FUNC4(intel_sdvo, &input1, &input2);
	/*
	 * Warn if the device reported failure to sync.
	 *
	 * A lot of SDVO devices fail to notify of sync, but it's
	 * a given it the status is a success, we succeeded.
	 */
	if (success && !input1) {
		FUNC0("First %s output reported failure to "
				"sync\n", FUNC2(intel_sdvo));
	}

	if (0)
		FUNC6(intel_sdvo,
						   DRM_MODE_DPMS_ON);
	FUNC5(intel_sdvo, intel_sdvo->attached_output);

	if (pipe_config->has_audio)
		FUNC3(intel_sdvo, pipe_config, conn_state);
}