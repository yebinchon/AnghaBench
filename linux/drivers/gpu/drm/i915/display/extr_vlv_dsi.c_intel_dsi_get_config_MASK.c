#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_6__ {void* crtc_clock; } ;
struct TYPE_4__ {TYPE_3__ adjusted_mode; } ;
struct intel_crtc_state {void* port_clock; TYPE_1__ base; int /*<<< orphan*/  output_types; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 void* FUNC3 (struct intel_encoder*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct intel_encoder*,struct intel_crtc_state*) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
				 struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	u32 pclk;
	FUNC1("\n");

	pipe_config->output_types |= FUNC0(INTEL_OUTPUT_DSI);

	if (FUNC2(dev_priv)) {
		FUNC4(encoder, pipe_config);
		pclk = FUNC3(encoder, pipe_config);
	} else {
		pclk = FUNC6(encoder, pipe_config);
	}

	if (pclk) {
		pipe_config->base.adjusted_mode.crtc_clock = pclk;
		pipe_config->port_clock = pclk;
	}
}